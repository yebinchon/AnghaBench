
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cb; int * dwFuture; int dwGrandFrames; } ;
struct TYPE_6__ {TYPE_3__ ExtHeader; } ;
struct TYPE_5__ {scalar_t__ cb; int fcc; } ;
typedef TYPE_1__ RIFFCHUNK ;
typedef int LPCSTR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_2__ AVISplitterImpl ;
typedef TYPE_3__ AVIEXTHEADER ;


 int FIXME (char*,int,...) ;
 int S_OK ;
 int TRACE (char*,...) ;


__attribute__((used)) static HRESULT AVISplitter_ProcessODML(AVISplitterImpl * This, const BYTE * pData, DWORD cb)
{
    const RIFFCHUNK * pChunk;

    for (pChunk = (const RIFFCHUNK *)pData;
         ((const BYTE *)pChunk >= pData) && ((const BYTE *)pChunk + sizeof(RIFFCHUNK) < pData + cb) && (pChunk->cb > 0);
         pChunk = (const RIFFCHUNK *)((const BYTE*)pChunk + sizeof(RIFFCHUNK) + pChunk->cb)
        )
    {
        switch (pChunk->fcc)
        {
        case 128:
            {
                int x;
                const AVIEXTHEADER * pExtHdr = (const AVIEXTHEADER *)pChunk;

                TRACE("processing extension header\n");
                if (pExtHdr->cb != sizeof(AVIEXTHEADER) - sizeof(RIFFCHUNK))
                {
                    FIXME("Size: %u\n", pExtHdr->cb);
                    break;
                }
                TRACE("dwGrandFrames: %u\n", pExtHdr->dwGrandFrames);
                for (x = 0; x < 61; ++x)
                    if (pExtHdr->dwFuture[x])
                        FIXME("dwFuture[%i] = %u (0x%08x)\n", x, pExtHdr->dwFuture[x], pExtHdr->dwFuture[x]);
                This->ExtHeader = *pExtHdr;
                break;
            }
        default:
            FIXME("unknown chunk type \"%.04s\" ignored\n", (LPCSTR)&pChunk->fcc);
        }
    }

    return S_OK;
}
