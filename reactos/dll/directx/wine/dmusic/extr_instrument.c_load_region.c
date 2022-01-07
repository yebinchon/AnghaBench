
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fccID; int dwSize; } ;
struct TYPE_5__ {int loop_present; TYPE_2__ wave_link; TYPE_2__ wave_loop; TYPE_2__ wave_sample; TYPE_2__ header; } ;
typedef TYPE_1__ instrument_region ;
typedef int chunk ;
typedef scalar_t__ ULONG ;
typedef int IStream ;
typedef int IDirectMusicInstrumentImpl ;
typedef int HRESULT ;
typedef TYPE_2__ DMUS_PRIVATE_CHUNK ;


 scalar_t__ FAILED (int ) ;



 int S_OK ;
 int TRACE (char*,int,...) ;
 int advance_stream (int *,int) ;
 int debugstr_fourcc (int) ;
 int read_from_stream (int *,TYPE_2__*,int) ;
 scalar_t__ subtract_bytes (scalar_t__,int) ;

__attribute__((used)) static HRESULT load_region(IDirectMusicInstrumentImpl *This, IStream *stream, instrument_region *region, ULONG length)
{
    HRESULT ret;
    DMUS_PRIVATE_CHUNK chunk;

    TRACE("(%p, %p, %p, %u)\n", This, stream, region, length);

    while (length)
    {
        ret = read_from_stream(stream, &chunk, sizeof(chunk));
        if (FAILED(ret))
            return ret;

        length = subtract_bytes(length, sizeof(chunk));

        switch (chunk.fccID)
        {
            case 130:
                TRACE("RGNH chunk (region header): %u bytes\n", chunk.dwSize);

                ret = read_from_stream(stream, &region->header, sizeof(region->header));
                if (FAILED(ret))
                    return ret;

                length = subtract_bytes(length, sizeof(region->header));
                break;

            case 128:
                TRACE("WSMP chunk (wave sample): %u bytes\n", chunk.dwSize);

                ret = read_from_stream(stream, &region->wave_sample, sizeof(region->wave_sample));
                if (FAILED(ret))
                    return ret;
                length = subtract_bytes(length, sizeof(region->wave_sample));

                if (!(region->loop_present = (chunk.dwSize != sizeof(region->wave_sample))))
                    break;

                ret = read_from_stream(stream, &region->wave_loop, sizeof(region->wave_loop));
                if (FAILED(ret))
                    return ret;

                length = subtract_bytes(length, sizeof(region->wave_loop));
                break;

            case 129:
                TRACE("WLNK chunk (wave link): %u bytes\n", chunk.dwSize);

                ret = read_from_stream(stream, &region->wave_link, sizeof(region->wave_link));
                if (FAILED(ret))
                    return ret;

                length = subtract_bytes(length, sizeof(region->wave_link));
                break;

            default:
                TRACE("Unknown chunk %s (skipping): %u bytes\n", debugstr_fourcc(chunk.fccID), chunk.dwSize);

                ret = advance_stream(stream, chunk.dwSize);
                if (FAILED(ret))
                    return ret;

                length = subtract_bytes(length, chunk.dwSize);
                break;
        }
    }

    return S_OK;
}
