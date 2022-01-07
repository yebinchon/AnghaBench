
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {int QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IStream_Read (int *,int*,int,int*) ;
 int IStream_Seek (int *,TYPE_2__,int ,TYPE_1__*) ;
 int STREAM_SEEK_SET ;
 int TRACE (char*,int ) ;
 int TRUE ;
 scalar_t__ memcmp (int*,char*,int) ;

__attribute__((used)) static BOOL has_png_transparency_chunk(IStream *pIStream)
{
    LARGE_INTEGER seek;
    BOOL has_tRNS = FALSE;
    HRESULT hr;
    BYTE header[8];

    seek.QuadPart = 8;
    do
    {
        ULARGE_INTEGER chunk_start;
        ULONG bytesread, chunk_size;

        hr = IStream_Seek(pIStream, seek, STREAM_SEEK_SET, &chunk_start);
        if (FAILED(hr)) break;

        hr = IStream_Read(pIStream, header, 8, &bytesread);
        if (FAILED(hr) || bytesread < 8) break;

        chunk_size = (header[0] << 24) | (header[1] << 16) | (header[2] << 8) | header[3];
        if (!memcmp(&header[4], "tRNS", 4))
        {
            has_tRNS = TRUE;
            break;
        }

        seek.QuadPart = chunk_start.QuadPart + chunk_size + 12;
    } while (memcmp(&header[4], "IDAT", 4) && memcmp(&header[4], "IEND", 4));

    TRACE("has_tRNS = %d\n", has_tRNS);
    return has_tRNS;
}
