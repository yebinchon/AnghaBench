#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_file ;
typedef  scalar_t__ i64 ;
struct TYPE_9__ {scalar_t__ zChunk; struct TYPE_9__* pNext; } ;
struct TYPE_7__ {scalar_t__ iOffset; } ;
struct TYPE_8__ {int nChunkSize; TYPE_1__ endpoint; TYPE_3__* pFirst; int /*<<< orphan*/  flags; int /*<<< orphan*/  zJournal; int /*<<< orphan*/  pVfs; } ;
typedef  TYPE_2__ MemJournal ;
typedef  TYPE_3__ FileChunk ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(MemJournal *p){
  int rc;
  sqlite3_file *pReal = (sqlite3_file*)p;
  MemJournal copy = *p;

  FUNC1(p, 0, sizeof(MemJournal));
  rc = FUNC3(copy.pVfs, copy.zJournal, pReal, copy.flags, 0);
  if( rc==SQLITE_OK ){
    int nChunk = copy.nChunkSize;
    i64 iOff = 0;
    FileChunk *pIter;
    for(pIter=copy.pFirst; pIter; pIter=pIter->pNext){
      if( iOff + nChunk > copy.endpoint.iOffset ){
        nChunk = copy.endpoint.iOffset - iOff;
      }
      rc = FUNC4(pReal, (u8*)pIter->zChunk, nChunk, iOff);
      if( rc ) break;
      iOff += nChunk;
    }
    if( rc==SQLITE_OK ){
      /* No error has occurred. Free the in-memory buffers. */
      FUNC0(&copy);
    }
  }
  if( rc!=SQLITE_OK ){
    /* If an error occurred while creating or writing to the file, restore
    ** the original before returning. This way, SQLite uses the in-memory
    ** journal data to roll back changes made to the internal page-cache
    ** before this function was called.  */
    FUNC2(pReal);
    *p = copy;
  }
  return rc;
}