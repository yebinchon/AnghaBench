
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int eFileLock; int lastErrno; int szChunk; int dbUpdate; int mmapSize; int mmapSizeMax; int nFetchOut; TYPE_1__* pVfs; } ;
typedef TYPE_2__ unixFile ;
typedef int sqlite3_file ;
typedef int i64 ;
struct TYPE_11__ {int mxMmap; } ;
struct TYPE_9__ {int mxPathname; int zName; } ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int SimulateIOErrorBenign (int) ;
 int UNIXFILE_PERSIST_WAL ;
 int UNIXFILE_PSOW ;
 int fcntlSizeHint (TYPE_2__*,int ) ;
 int fileHasMoved (TYPE_2__*) ;
 int proxyFileControl (int *,int,void*) ;
 TYPE_6__ sqlite3GlobalConfig ;
 char* sqlite3_malloc64 (int ) ;
 char* sqlite3_mprintf (char*,int ) ;
 int unixGetTempname (int ,char*) ;
 int unixMapfile (TYPE_2__*,int) ;
 int unixModeBit (TYPE_2__*,int ,int*) ;
 int unixUnmapfile (TYPE_2__*) ;

__attribute__((used)) static int unixFileControl(sqlite3_file *id, int op, void *pArg){
  unixFile *pFile = (unixFile*)id;
  switch( op ){
    case 135: {
      *(int*)pArg = pFile->eFileLock;
      return SQLITE_OK;
    }
    case 136: {
      *(int*)pArg = pFile->lastErrno;
      return SQLITE_OK;
    }
    case 140: {
      pFile->szChunk = *(int *)pArg;
      return SQLITE_OK;
    }
    case 130: {
      int rc;
      SimulateIOErrorBenign(1);
      rc = fcntlSizeHint(pFile, *(i64 *)pArg);
      SimulateIOErrorBenign(0);
      return rc;
    }
    case 133: {
      unixModeBit(pFile, UNIXFILE_PERSIST_WAL, (int*)pArg);
      return SQLITE_OK;
    }
    case 132: {
      unixModeBit(pFile, UNIXFILE_PSOW, (int*)pArg);
      return SQLITE_OK;
    }
    case 128: {
      *(char**)pArg = sqlite3_mprintf("%s", pFile->pVfs->zName);
      return SQLITE_OK;
    }
    case 129: {
      char *zTFile = sqlite3_malloc64( pFile->pVfs->mxPathname );
      if( zTFile ){
        unixGetTempname(pFile->pVfs->mxPathname, zTFile);
        *(char**)pArg = zTFile;
      }
      return SQLITE_OK;
    }
    case 137: {
      *(int*)pArg = fileHasMoved(pFile);
      return SQLITE_OK;
    }
  }
  return SQLITE_NOTFOUND;
}
