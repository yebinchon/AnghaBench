#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct unixFileId {scalar_t__ pLockMutex; int nRef; struct unixFileId* pPrev; struct unixFileId* pNext; int /*<<< orphan*/  fileId; scalar_t__ ino; int /*<<< orphan*/  pId; int /*<<< orphan*/  dev; } ;
typedef  struct unixFileId unixInodeInfo ;
struct TYPE_5__ {int h; scalar_t__ lastErrno; int fsFlags; int /*<<< orphan*/  pId; } ;
typedef  TYPE_1__ unixFile ;
typedef  scalar_t__ u64 ;
struct stat {scalar_t__ st_size; scalar_t__ st_ino; int /*<<< orphan*/  st_dev; } ;
typedef  int /*<<< orphan*/  fileId ;
struct TYPE_6__ {scalar_t__ bCoreMutex; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ EOVERFLOW ; 
 int SQLITE_FSFLAGS_IS_MSDOS ; 
 int SQLITE_IOERR ; 
 int /*<<< orphan*/  SQLITE_MUTEX_FAST ; 
 int SQLITE_NOLFS ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct unixFileId* inodeList ; 
 scalar_t__ FUNC1 (struct unixFileId*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct unixFileId*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct unixFileId*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,struct stat*) ; 
 int FUNC5 (int,char*,int) ; 
 TYPE_3__ sqlite3GlobalConfig ; 
 int /*<<< orphan*/  FUNC6 (struct unixFileId*) ; 
 struct unixFileId* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(
  unixFile *pFile,               /* Unix file with file desc used in the key */
  unixInodeInfo **ppInode        /* Return the unixInodeInfo object here */
){
  int rc;                        /* System call return code */
  int fd;                        /* The file descriptor for pFile */
  struct unixFileId fileId;      /* Lookup key for the unixInodeInfo */
  struct stat statbuf;           /* Low-level file information */
  unixInodeInfo *pInode = 0;     /* Candidate unixInodeInfo object */

  FUNC0( FUNC10() );

  /* Get low-level information about the file that we can used to
  ** create a unique name for the file.
  */
  fd = pFile->h;
  rc = FUNC4(fd, &statbuf);
  if( rc!=0 ){
    FUNC9(pFile, errno);
#if defined(EOVERFLOW) && defined(SQLITE_DISABLE_LFS)
    if( pFile->lastErrno==EOVERFLOW ) return SQLITE_NOLFS;
#endif
    return SQLITE_IOERR;
  }

#ifdef __APPLE__
  /* On OS X on an msdos filesystem, the inode number is reported
  ** incorrectly for zero-size files.  See ticket #3260.  To work
  ** around this problem (we consider it a bug in OS X, not SQLite)
  ** we always increase the file size to 1 by writing a single byte
  ** prior to accessing the inode number.  The one byte written is
  ** an ASCII 'S' character which also happens to be the first byte
  ** in the header of every SQLite database.  In this way, if there
  ** is a race condition such that another thread has already populated
  ** the first page of the database, no damage is done.
  */
  if( statbuf.st_size==0 && (pFile->fsFlags & SQLITE_FSFLAGS_IS_MSDOS)!=0 ){
    do{ rc = osWrite(fd, "S", 1); }while( rc<0 && errno==EINTR );
    if( rc!=1 ){
      storeLastErrno(pFile, errno);
      return SQLITE_IOERR;
    }
    rc = osFstat(fd, &statbuf);
    if( rc!=0 ){
      storeLastErrno(pFile, errno);
      return SQLITE_IOERR;
    }
  }
#endif

  FUNC3(&fileId, 0, sizeof(fileId));
  fileId.dev = statbuf.st_dev;
#if OS_VXWORKS
  fileId.pId = pFile->pId;
#else
  fileId.ino = (u64)statbuf.st_ino;
#endif
  FUNC0( FUNC10() );
  pInode = inodeList;
  while( pInode && FUNC1(&fileId, &pInode->fileId, sizeof(fileId)) ){
    pInode = pInode->pNext;
  }
  if( pInode==0 ){
    pInode = FUNC7( sizeof(*pInode) );
    if( pInode==0 ){
      return SQLITE_NOMEM_BKPT;
    }
    FUNC3(pInode, 0, sizeof(*pInode));
    FUNC2(&pInode->fileId, &fileId, sizeof(fileId));
    if( sqlite3GlobalConfig.bCoreMutex ){
      pInode->pLockMutex = FUNC8(SQLITE_MUTEX_FAST);
      if( pInode->pLockMutex==0 ){
        FUNC6(pInode);
        return SQLITE_NOMEM_BKPT;
      }
    }
    pInode->nRef = 1;
    FUNC0( FUNC10() );
    pInode->pNext = inodeList;
    pInode->pPrev = 0;
    if( inodeList ) inodeList->pPrev = pInode;
    inodeList = pInode;
  }else{
    pInode->nRef++;
  }
  *ppInode = pInode;
  return SQLITE_OK;
}