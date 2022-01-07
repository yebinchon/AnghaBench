
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_file ;
typedef scalar_t__ i64 ;
struct TYPE_9__ {scalar_t__ zChunk; struct TYPE_9__* pNext; } ;
struct TYPE_7__ {scalar_t__ iOffset; } ;
struct TYPE_8__ {int nChunkSize; TYPE_1__ endpoint; TYPE_3__* pFirst; int flags; int zJournal; int pVfs; } ;
typedef TYPE_2__ MemJournal ;
typedef TYPE_3__ FileChunk ;


 int SQLITE_OK ;
 int memjrnlFreeChunks (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3OsClose (int *) ;
 int sqlite3OsOpen (int ,int ,int *,int ,int ) ;
 int sqlite3OsWrite (int *,int *,int,scalar_t__) ;

__attribute__((used)) static int memjrnlCreateFile(MemJournal *p){
  int rc;
  sqlite3_file *pReal = (sqlite3_file*)p;
  MemJournal copy = *p;

  memset(p, 0, sizeof(MemJournal));
  rc = sqlite3OsOpen(copy.pVfs, copy.zJournal, pReal, copy.flags, 0);
  if( rc==SQLITE_OK ){
    int nChunk = copy.nChunkSize;
    i64 iOff = 0;
    FileChunk *pIter;
    for(pIter=copy.pFirst; pIter; pIter=pIter->pNext){
      if( iOff + nChunk > copy.endpoint.iOffset ){
        nChunk = copy.endpoint.iOffset - iOff;
      }
      rc = sqlite3OsWrite(pReal, (u8*)pIter->zChunk, nChunk, iOff);
      if( rc ) break;
      iOff += nChunk;
    }
    if( rc==SQLITE_OK ){

      memjrnlFreeChunks(&copy);
    }
  }
  if( rc!=SQLITE_OK ){




    sqlite3OsClose(pReal);
    *p = copy;
  }
  return rc;
}
