#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int eFileLock; int lastErrno; int szChunk; void* mmapSize; int /*<<< orphan*/  dbUpdate; void* mmapSizeMax; TYPE_1__* pVfs; } ;
typedef  TYPE_2__ unixFile ;
typedef  int /*<<< orphan*/  sqlite3_file ;
typedef  void* i64 ;
struct TYPE_8__ {void* mxMmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  mxPathname; int /*<<< orphan*/  zName; } ;

/* Variables and functions */
#define  SQLITE_FCNTL_CHUNK_SIZE 139 
#define  SQLITE_FCNTL_DB_UNCHANGED 138 
#define  SQLITE_FCNTL_LOCKSTATE 137 
#define  SQLITE_FCNTL_MMAP_SIZE 136 
#define  SQLITE_FCNTL_PERSIST_WAL 135 
#define  SQLITE_FCNTL_POWERSAFE_OVERWRITE 134 
#define  SQLITE_FCNTL_SIZE_HINT 133 
#define  SQLITE_FCNTL_TEMPFILENAME 132 
#define  SQLITE_FCNTL_VFSNAME 131 
#define  SQLITE_GET_LOCKPROXYFILE 130 
#define  SQLITE_LAST_ERRNO 129 
 int SQLITE_NOTFOUND ; 
 int SQLITE_OK ; 
#define  SQLITE_SET_LOCKPROXYFILE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UNIXFILE_PERSIST_WAL ; 
 int /*<<< orphan*/  UNIXFILE_PSOW ; 
 int FUNC1 (TYPE_2__*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,void*) ; 
 TYPE_4__ sqlite3GlobalConfig ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(sqlite3_file *id, int op, void *pArg){
  unixFile *pFile = (unixFile*)id;
  switch( op ){
    case SQLITE_FCNTL_LOCKSTATE: {
      *(int*)pArg = pFile->eFileLock;
      return SQLITE_OK;
    }
    case SQLITE_LAST_ERRNO: {
      *(int*)pArg = pFile->lastErrno;
      return SQLITE_OK;
    }
    case SQLITE_FCNTL_CHUNK_SIZE: {
      pFile->szChunk = *(int *)pArg;
      return SQLITE_OK;
    }
    case SQLITE_FCNTL_SIZE_HINT: {
      int rc;
      FUNC0(1);
      rc = FUNC1(pFile, *(i64 *)pArg);
      FUNC0(0);
      return rc;
    }
    case SQLITE_FCNTL_PERSIST_WAL: {
      FUNC6(pFile, UNIXFILE_PERSIST_WAL, (int*)pArg);
      return SQLITE_OK;
    }
    case SQLITE_FCNTL_POWERSAFE_OVERWRITE: {
      FUNC6(pFile, UNIXFILE_PSOW, (int*)pArg);
      return SQLITE_OK;
    }
    case SQLITE_FCNTL_VFSNAME: {
      *(char**)pArg = FUNC4("%s", pFile->pVfs->zName);
      return SQLITE_OK;
    }
    case SQLITE_FCNTL_TEMPFILENAME: {
      char *zTFile = FUNC3( pFile->pVfs->mxPathname );
      if( zTFile ){
        FUNC5(pFile->pVfs->mxPathname, zTFile);
        *(char**)pArg = zTFile;
      }
      return SQLITE_OK;
    }
    case SQLITE_FCNTL_MMAP_SIZE: {
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
#ifdef SQLITE_DEBUG
    /* The pager calls this method to signal that it has done
    ** a rollback and that the database is therefore unchanged and
    ** it hence it is OK for the transaction change counter to be
    ** unchanged.
    */
    case SQLITE_FCNTL_DB_UNCHANGED: {
      ((unixFile*)id)->dbUpdate = 0;
      return SQLITE_OK;
    }
#endif
#if SQLITE_ENABLE_LOCKING_STYLE && defined(__APPLE__)
    case SQLITE_SET_LOCKPROXYFILE:
    case SQLITE_GET_LOCKPROXYFILE: {
      return proxyFileControl(id,op,pArg);
    }
#endif /* SQLITE_ENABLE_LOCKING_STYLE && defined(__APPLE__) */
  }
  return SQLITE_NOTFOUND;
}