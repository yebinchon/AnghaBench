
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_8__ {scalar_t__ pFd; } ;
struct TYPE_7__ {scalar_t__ pFd; } ;
struct TYPE_9__ {scalar_t__ aMemory; int pList; } ;
struct TYPE_10__ {TYPE_2__ file2; TYPE_1__ file; TYPE_3__ list; int pUnpacked; } ;
typedef TYPE_4__ SortSubtask ;


 int assert (int) ;
 int memset (TYPE_4__*,int ,int) ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3OsCloseFree (scalar_t__) ;
 int sqlite3_free (scalar_t__) ;
 int vdbeSorterRecordFree (int ,int ) ;

__attribute__((used)) static void vdbeSortSubtaskCleanup(sqlite3 *db, SortSubtask *pTask){
  sqlite3DbFree(db, pTask->pUnpacked);







  {
    assert( pTask->list.aMemory==0 );
    vdbeSorterRecordFree(0, pTask->list.pList);
  }
  if( pTask->file.pFd ){
    sqlite3OsCloseFree(pTask->file.pFd);
  }
  if( pTask->file2.pFd ){
    sqlite3OsCloseFree(pTask->file2.pFd);
  }
  memset(pTask, 0, sizeof(SortSubtask));
}
