#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dwChunkLength; scalar_t__ dwChunkOffset; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  ckid; } ;
struct TYPE_6__ {int /*<<< orphan*/  cksize; scalar_t__ dwDataOffset; } ;
struct TYPE_7__ {int cbIdxRecords; int nIdxRecords; TYPE_1__ ckLastRecord; TYPE_3__* idxRecords; int /*<<< orphan*/ ** ppStreams; } ;
typedef  TYPE_2__ IAVIFileImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  AVIINDEXENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 int /*<<< orphan*/  AVIIF_LIST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  listtypeAVIRECORD ; 

__attribute__((used)) static HRESULT FUNC5(IAVIFileImpl *This)
{
  /* pre-conditions */
  FUNC4(This != NULL && This->ppStreams[0] != NULL);

  if (This->idxRecords == NULL || This->cbIdxRecords / sizeof(AVIINDEXENTRY) <= This->nIdxRecords) {
    DWORD new_count = This->cbIdxRecords + 1024 * sizeof(AVIINDEXENTRY);
    void *mem;
    if (!This->idxRecords)
      mem = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, new_count);
    else
      mem = FUNC3(FUNC0(), HEAP_ZERO_MEMORY, This->idxRecords, new_count);
    if (mem) {
      This->cbIdxRecords = new_count;
      This->idxRecords = mem;
    } else {
      FUNC2(FUNC0(), 0, This->idxRecords);
      This->idxRecords = NULL;
      return AVIERR_MEMORY;
    }
  }

  FUNC4(This->nIdxRecords < This->cbIdxRecords/sizeof(AVIINDEXENTRY));

  This->idxRecords[This->nIdxRecords].ckid          = listtypeAVIRECORD;
  This->idxRecords[This->nIdxRecords].dwFlags       = AVIIF_LIST;
  This->idxRecords[This->nIdxRecords].dwChunkOffset =
    This->ckLastRecord.dwDataOffset - 2 * sizeof(DWORD);
  This->idxRecords[This->nIdxRecords].dwChunkLength =
    This->ckLastRecord.cksize;
  This->nIdxRecords++;

  return AVIERR_OK;
}