
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dwChunkLength; scalar_t__ dwChunkOffset; int dwFlags; int ckid; } ;
struct TYPE_6__ {int cksize; scalar_t__ dwDataOffset; } ;
struct TYPE_7__ {int cbIdxRecords; int nIdxRecords; TYPE_1__ ckLastRecord; TYPE_3__* idxRecords; int ** ppStreams; } ;
typedef TYPE_2__ IAVIFileImpl ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int AVIINDEXENTRY ;


 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int AVIIF_LIST ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 void* HeapReAlloc (int ,int ,TYPE_3__*,int) ;
 int assert (int) ;
 int listtypeAVIRECORD ;

__attribute__((used)) static HRESULT AVIFILE_AddRecord(IAVIFileImpl *This)
{

  assert(This != ((void*)0) && This->ppStreams[0] != ((void*)0));

  if (This->idxRecords == ((void*)0) || This->cbIdxRecords / sizeof(AVIINDEXENTRY) <= This->nIdxRecords) {
    DWORD new_count = This->cbIdxRecords + 1024 * sizeof(AVIINDEXENTRY);
    void *mem;
    if (!This->idxRecords)
      mem = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, new_count);
    else
      mem = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, This->idxRecords, new_count);
    if (mem) {
      This->cbIdxRecords = new_count;
      This->idxRecords = mem;
    } else {
      HeapFree(GetProcessHeap(), 0, This->idxRecords);
      This->idxRecords = ((void*)0);
      return AVIERR_MEMORY;
    }
  }

  assert(This->nIdxRecords < This->cbIdxRecords/sizeof(AVIINDEXENTRY));

  This->idxRecords[This->nIdxRecords].ckid = listtypeAVIRECORD;
  This->idxRecords[This->nIdxRecords].dwFlags = AVIIF_LIST;
  This->idxRecords[This->nIdxRecords].dwChunkOffset =
    This->ckLastRecord.dwDataOffset - 2 * sizeof(DWORD);
  This->idxRecords[This->nIdxRecords].dwChunkLength =
    This->ckLastRecord.cksize;
  This->nIdxRecords++;

  return AVIERR_OK;
}
