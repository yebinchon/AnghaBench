
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_12__ {int cb; TYPE_2__* aIndex; } ;
struct TYPE_8__ {TYPE_3__* pInputPin; } ;
struct TYPE_11__ {int offset; TYPE_5__* oldindex; int EndOfFile; TYPE_1__ Parser; int CurrentChunkOffset; } ;
struct TYPE_10__ {int pReader; } ;
struct TYPE_9__ {int dwOffset; int dwChunkId; char* dwFlags; char* dwSize; } ;
typedef TYPE_3__ PullPin ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_4__ AVISplitterImpl ;
typedef TYPE_5__ AVIOLDINDEX ;


 int BYTES_FROM_MEDIATIME (int ) ;
 int CoTaskMemFree (TYPE_5__*) ;
 int ERR (char*,char*,char*,int,char*,int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int IAsyncReader_SyncRead (int ,int,int,int *) ;
 int S_OK ;
 int TRACE (char*,char*,...) ;
 char* debugstr_an (char*,int) ;
 int mmioFOURCC (char,float,char,char) ;
 int wine_dbgstr_longlong (int) ;

__attribute__((used)) static HRESULT AVISplitter_ProcessOldIndex(AVISplitterImpl *This)
{
    ULONGLONG mov_pos = BYTES_FROM_MEDIATIME(This->CurrentChunkOffset) - sizeof(DWORD);
    AVIOLDINDEX *pAviOldIndex = This->oldindex;
    int relative = -1;
    DWORD x;

    for (x = 0; x < pAviOldIndex->cb / sizeof(pAviOldIndex->aIndex[0]); ++x)
    {
        DWORD temp, temp2 = 0, offset, chunkid;
        PullPin *pin = This->Parser.pInputPin;

        offset = pAviOldIndex->aIndex[x].dwOffset;
        chunkid = pAviOldIndex->aIndex[x].dwChunkId;

        TRACE("dwChunkId: %.4s\n", (char *)&chunkid);
        TRACE("dwFlags: %08x\n", pAviOldIndex->aIndex[x].dwFlags);
        TRACE("dwOffset (%s): %08x\n", relative ? "relative" : "absolute", offset);
        TRACE("dwSize: %08x\n", pAviOldIndex->aIndex[x].dwSize);


        if (relative == -1)
        {
            IAsyncReader_SyncRead(pin->pReader, offset, sizeof(DWORD), (BYTE *)&temp);
            relative = (chunkid != temp);

            if (chunkid == mmioFOURCC('7','F','x','x')
                && ((char *)&temp)[0] == 'i' && ((char *)&temp)[1] == 'x')
                relative = FALSE;

            if (relative)
            {
                if (offset + mov_pos < BYTES_FROM_MEDIATIME(This->EndOfFile))
                    IAsyncReader_SyncRead(pin->pReader, offset + mov_pos, sizeof(DWORD), (BYTE *)&temp2);

                if (chunkid == mmioFOURCC('7','F','x','x')
                    && ((char *)&temp2)[0] == 'i' && ((char *)&temp2)[1] == 'x')
                {

                }
                else if (temp2 != chunkid)
                {
                    ERR("Faulty index or bug in handling: Wanted FCC: %s, Abs FCC: %s (@ %x), Rel FCC: %s (@ %s)\n",
                        debugstr_an((char *)&chunkid, 4), debugstr_an((char *)&temp, 4), offset,
                        debugstr_an((char *)&temp2, 4), wine_dbgstr_longlong(mov_pos + offset));
                    relative = -1;
                }
                else
                    TRACE("Scanned dwChunkId: %s\n", debugstr_an((char *)&temp2, 4));
            }
            else if (!relative)
                TRACE("Scanned dwChunkId: %s\n", debugstr_an((char *)&temp, 4));
        }

        else break;
    }

    if (relative == -1)
    {
        FIXME("Dropping index: no idea whether it is relative or absolute\n");
        CoTaskMemFree(This->oldindex);
        This->oldindex = ((void*)0);
    }
    else if (!relative)
        This->offset = 0;
    else
        This->offset = (DWORD)mov_pos;

    return S_OK;
}
