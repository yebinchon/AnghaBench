
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pDest; int iNext; TYPE_1__* pSrc; scalar_t__ isAttached; TYPE_3__* pSrcDb; TYPE_3__* pDestDb; } ;
typedef TYPE_2__ sqlite3_backup ;
struct TYPE_14__ {int mutex; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_12__ {int nBackup; } ;


 scalar_t__ SQLITE_ERROR ;
 scalar_t__ SQLITE_NOMEM ;
 void* findBtree (TYPE_3__*,TYPE_3__*,char const*) ;
 scalar_t__ setDestPgsz (TYPE_2__*) ;
 int sqlite3Error (TYPE_3__*,scalar_t__,char*) ;
 scalar_t__ sqlite3MallocZero (int) ;
 int sqlite3_free (TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

sqlite3_backup *sqlite3_backup_init(
  sqlite3* pDestDb,
  const char *zDestDb,
  sqlite3* pSrcDb,
  const char *zSrcDb
){
  sqlite3_backup *p;
  sqlite3_mutex_enter(pSrcDb->mutex);
  sqlite3_mutex_enter(pDestDb->mutex);

  if( pSrcDb==pDestDb ){
    sqlite3Error(
        pDestDb, SQLITE_ERROR, "source and destination must be distinct"
    );
    p = 0;
  }else {




    p = (sqlite3_backup *)sqlite3MallocZero(sizeof(sqlite3_backup));
    if( !p ){
      sqlite3Error(pDestDb, SQLITE_NOMEM, 0);
    }
  }


  if( p ){
    p->pSrc = findBtree(pDestDb, pSrcDb, zSrcDb);
    p->pDest = findBtree(pDestDb, pDestDb, zDestDb);
    p->pDestDb = pDestDb;
    p->pSrcDb = pSrcDb;
    p->iNext = 1;
    p->isAttached = 0;

    if( 0==p->pSrc || 0==p->pDest || setDestPgsz(p)==SQLITE_NOMEM ){





      sqlite3_free(p);
      p = 0;
    }
  }
  if( p ){
    p->pSrc->nBackup++;
  }

  sqlite3_mutex_leave(pDestDb->mutex);
  sqlite3_mutex_leave(pSrcDb->mutex);
  return p;
}
