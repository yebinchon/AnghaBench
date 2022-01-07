
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int eFileLock; int lastErrno; int szChunk; void* mmapSize; int dbUpdate; void* mmapSizeMax; TYPE_1__* pVfs; } ;
typedef TYPE_2__ unixFile ;
typedef int sqlite3_file ;
typedef void* i64 ;
struct TYPE_8__ {void* mxMmap; } ;
struct TYPE_6__ {int mxPathname; int zName; } ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;

 int SimulateIOErrorBenign (int) ;
 int UNIXFILE_PERSIST_WAL ;
 int UNIXFILE_PSOW ;
 int fcntlSizeHint (TYPE_2__*,void*) ;
 int proxyFileControl (int *,int,void*) ;
 TYPE_4__ sqlite3GlobalConfig ;
 char* sqlite3_malloc (int ) ;
 char* sqlite3_mprintf (char*,int ) ;
 int unixGetTempname (int ,char*) ;
 int unixModeBit (TYPE_2__*,int ,int*) ;

__attribute__((used)) static int unixFileControl(sqlite3_file *id, int op, void *pArg){
  unixFile *pFile = (unixFile*)id;
  switch( op ){
    case 137: {
      *(int*)pArg = pFile->eFileLock;
      return SQLITE_OK;
    }
    case 129: {
      *(int*)pArg = pFile->lastErrno;
      return SQLITE_OK;
    }
    case 139: {
      pFile->szChunk = *(int *)pArg;
      return SQLITE_OK;
    }
    case 133: {
      int rc;
      SimulateIOErrorBenign(1);
      rc = fcntlSizeHint(pFile, *(i64 *)pArg);
      SimulateIOErrorBenign(0);
      return rc;
    }
    case 135: {
      unixModeBit(pFile, UNIXFILE_PERSIST_WAL, (int*)pArg);
      return SQLITE_OK;
    }
    case 134: {
      unixModeBit(pFile, UNIXFILE_PSOW, (int*)pArg);
      return SQLITE_OK;
    }
    case 131: {
      *(char**)pArg = sqlite3_mprintf("%s", pFile->pVfs->zName);
      return SQLITE_OK;
    }
    case 132: {
      char *zTFile = sqlite3_malloc( pFile->pVfs->mxPathname );
      if( zTFile ){
        unixGetTempname(pFile->pVfs->mxPathname, zTFile);
        *(char**)pArg = zTFile;
      }
      return SQLITE_OK;
    }
    case 136: {
      i64 newLimit = *(i64*)pArg;
      if( newLimit>sqlite3GlobalConfig.mxMmap ){
        newLimit = sqlite3GlobalConfig.mxMmap;
      }
      *(i64*)pArg = pFile->mmapSizeMax;
      if( newLimit>=0 ){
        pFile->mmapSizeMax = newLimit;
        if( newLimit<pFile->mmapSize ) pFile->mmapSize = newLimit;
      }
      return SQLITE_OK;
    }
  }
  return SQLITE_NOTFOUND;
}
