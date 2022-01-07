
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int rc; TYPE_2__* pDestDb; TYPE_8__* pSrc; int pDest; struct TYPE_11__* pNext; scalar_t__ isAttached; TYPE_2__* pSrcDb; } ;
typedef TYPE_1__ sqlite3_backup ;
struct TYPE_12__ {int mutex; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_13__ {int nBackup; } ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int sqlite3BtreeEnter (TYPE_8__*) ;
 int sqlite3BtreeLeave (TYPE_8__*) ;
 int sqlite3BtreePager (TYPE_8__*) ;
 int sqlite3BtreeRollback (int ,int,int ) ;
 int sqlite3Error (TYPE_2__*,int) ;
 int sqlite3LeaveMutexAndCloseZombie (TYPE_2__*) ;
 TYPE_1__** sqlite3PagerBackupPtr (int ) ;
 int sqlite3_free (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;

int sqlite3_backup_finish(sqlite3_backup *p){
  sqlite3_backup **pp;
  sqlite3 *pSrcDb;
  int rc;


  if( p==0 ) return SQLITE_OK;
  pSrcDb = p->pSrcDb;
  sqlite3_mutex_enter(pSrcDb->mutex);
  sqlite3BtreeEnter(p->pSrc);
  if( p->pDestDb ){
    sqlite3_mutex_enter(p->pDestDb->mutex);
  }


  if( p->pDestDb ){
    p->pSrc->nBackup--;
  }
  if( p->isAttached ){
    pp = sqlite3PagerBackupPtr(sqlite3BtreePager(p->pSrc));
    while( *pp!=p ){
      pp = &(*pp)->pNext;
    }
    *pp = p->pNext;
  }


  sqlite3BtreeRollback(p->pDest, SQLITE_OK, 0);


  rc = (p->rc==SQLITE_DONE) ? SQLITE_OK : p->rc;
  if( p->pDestDb ){
    sqlite3Error(p->pDestDb, rc);


    sqlite3LeaveMutexAndCloseZombie(p->pDestDb);
  }
  sqlite3BtreeLeave(p->pSrc);
  if( p->pDestDb ){



    sqlite3_free(p);
  }
  sqlite3LeaveMutexAndCloseZombie(pSrcDb);
  return rc;
}
