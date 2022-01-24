#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int szOsFile; int mxPathname; } ;
typedef  TYPE_1__ sqlite3_vfs ;
typedef  char sqlite3_file ;
typedef  int i64 ;
struct TYPE_8__ {TYPE_1__* pVfs; } ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_ACCESS_EXISTS ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_OPEN_MAIN_JOURNAL ; 
 int SQLITE_OPEN_MASTER_JOURNAL ; 
 int SQLITE_OPEN_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,int) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int*) ; 
 int FUNC9 (TYPE_1__*,char const*,char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,char const*) ; 

__attribute__((used)) static int FUNC14(Pager *pPager, const char *zMaster){
  sqlite3_vfs *pVfs = pPager->pVfs;
  int rc;                   /* Return code */
  sqlite3_file *pMaster;    /* Malloc'd master-journal file descriptor */
  sqlite3_file *pJournal;   /* Malloc'd child-journal file descriptor */
  char *zMasterJournal = 0; /* Contents of master journal file */
  i64 nMasterJournal;       /* Size of master journal file */
  char *zJournal;           /* Pointer to one journal within MJ file */
  char *zMasterPtr;         /* Space to hold MJ filename from a journal file */
  int nMasterPtr;           /* Amount of space allocated to zMasterPtr[] */

  /* Allocate space for both the pJournal and pMaster file descriptors.
  ** If successful, open the master journal file for reading.
  */
  pMaster = (sqlite3_file *)FUNC4(pVfs->szOsFile * 2);
  pJournal = (sqlite3_file *)(((u8 *)pMaster) + pVfs->szOsFile);
  if( !pMaster ){
    rc = SQLITE_NOMEM;
  }else{
    const int flags = (SQLITE_OPEN_READONLY|SQLITE_OPEN_MASTER_JOURNAL);
    rc = FUNC9(pVfs, zMaster, pMaster, flags, 0);
  }
  if( rc!=SQLITE_OK ) goto delmaster_out;

  /* Load the entire master journal file into space obtained from
  ** sqlite3_malloc() and pointed to by zMasterJournal.   Also obtain
  ** sufficient space (in zMasterPtr) to hold the names of master
  ** journal files extracted from regular rollback-journals.
  */
  rc = FUNC8(pMaster, &nMasterJournal);
  if( rc!=SQLITE_OK ) goto delmaster_out;
  nMasterPtr = pVfs->mxPathname+1;
  zMasterJournal = FUNC3((int)nMasterJournal + nMasterPtr + 1);
  if( !zMasterJournal ){
    rc = SQLITE_NOMEM;
    goto delmaster_out;
  }
  zMasterPtr = &zMasterJournal[nMasterJournal+1];
  rc = FUNC10(pMaster, zMasterJournal, (int)nMasterJournal, 0);
  if( rc!=SQLITE_OK ) goto delmaster_out;
  zMasterJournal[nMasterJournal] = 0;

  zJournal = zMasterJournal;
  while( (zJournal-zMasterJournal)<nMasterJournal ){
    int exists;
    rc = FUNC5(pVfs, zJournal, SQLITE_ACCESS_EXISTS, &exists);
    if( rc!=SQLITE_OK ){
      goto delmaster_out;
    }
    if( exists ){
      /* One of the journals pointed to by the master journal exists.
      ** Open it and check if it points at the master journal. If
      ** so, return without deleting the master journal file.
      */
      int c;
      int flags = (SQLITE_OPEN_READONLY|SQLITE_OPEN_MAIN_JOURNAL);
      rc = FUNC9(pVfs, zJournal, pJournal, flags, 0);
      if( rc!=SQLITE_OK ){
        goto delmaster_out;
      }

      rc = FUNC2(pJournal, zMasterPtr, nMasterPtr);
      FUNC6(pJournal);
      if( rc!=SQLITE_OK ){
        goto delmaster_out;
      }

      c = zMasterPtr[0]!=0 && FUNC13(zMasterPtr, zMaster)==0;
      if( c ){
        /* We have a match. Do not delete the master journal file. */
        goto delmaster_out;
      }
    }
    zJournal += (FUNC11(zJournal)+1);
  }
 
  FUNC6(pMaster);
  rc = FUNC7(pVfs, zMaster, 0);

delmaster_out:
  FUNC12(zMasterJournal);
  if( pMaster ){
    FUNC6(pMaster);
    FUNC0( !FUNC1(pJournal) );
    FUNC12(pMaster);
  }
  return rc;
}