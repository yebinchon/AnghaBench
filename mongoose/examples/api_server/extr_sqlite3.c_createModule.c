
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_module ;
struct TYPE_8__ {int mallocFailed; int mutex; int aModule; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_9__ {char* zName; void (* xDestroy ) (void*) ;void* pAux; int const* pModule; } ;
typedef TYPE_2__ Module ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ sqlite3DbMallocRaw (TYPE_1__*,int) ;
 scalar_t__ sqlite3HashFind (int *,char const*,int) ;
 scalar_t__ sqlite3HashInsert (int *,char*,int,void*) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static int createModule(
  sqlite3 *db,
  const char *zName,
  const sqlite3_module *pModule,
  void *pAux,
  void (*xDestroy)(void *)
){
  int rc = SQLITE_OK;
  int nName;

  sqlite3_mutex_enter(db->mutex);
  nName = sqlite3Strlen30(zName);
  if( sqlite3HashFind(&db->aModule, zName, nName) ){
    rc = SQLITE_MISUSE_BKPT;
  }else{
    Module *pMod;
    pMod = (Module *)sqlite3DbMallocRaw(db, sizeof(Module) + nName + 1);
    if( pMod ){
      Module *pDel;
      char *zCopy = (char *)(&pMod[1]);
      memcpy(zCopy, zName, nName+1);
      pMod->zName = zCopy;
      pMod->pModule = pModule;
      pMod->pAux = pAux;
      pMod->xDestroy = xDestroy;
      pDel = (Module *)sqlite3HashInsert(&db->aModule,zCopy,nName,(void*)pMod);
      assert( pDel==0 || pDel==pMod );
      if( pDel ){
        db->mallocFailed = 1;
        sqlite3DbFree(db, pDel);
      }
    }
  }
  rc = sqlite3ApiExit(db, rc);
  if( rc!=SQLITE_OK && xDestroy ) xDestroy(pAux);

  sqlite3_mutex_leave(db->mutex);
  return rc;
}
