#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Pager ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_FCNTL_DATA_VERSION ; 
 int SQLITE_FCNTL_FILE_POINTER ; 
 int SQLITE_FCNTL_JOURNAL_POINTER ; 
 int SQLITE_FCNTL_VFS_POINTER ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,void*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(sqlite3 *db, const char *zDbName, int op, void *pArg){
  int rc = SQLITE_ERROR;
  Btree *pBtree;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) ) return SQLITE_MISUSE_BKPT;
#endif
  FUNC11(db->mutex);
  pBtree = FUNC4(db, zDbName);
  if( pBtree ){
    Pager *pPager;
    sqlite3_file *fd;
    FUNC1(pBtree);
    pPager = FUNC3(pBtree);
    FUNC0( pPager!=0 );
    fd = FUNC7(pPager);
    FUNC0( fd!=0 );
    if( op==SQLITE_FCNTL_FILE_POINTER ){
      *(sqlite3_file**)pArg = fd;
      rc = SQLITE_OK;
    }else if( op==SQLITE_FCNTL_VFS_POINTER ){
      *(sqlite3_vfs**)pArg = FUNC9(pPager);
      rc = SQLITE_OK;
    }else if( op==SQLITE_FCNTL_JOURNAL_POINTER ){
      *(sqlite3_file**)pArg = FUNC8(pPager);
      rc = SQLITE_OK;
    }else if( op==SQLITE_FCNTL_DATA_VERSION ){
      *(unsigned int*)pArg = FUNC6(pPager);
      rc = SQLITE_OK;
    }else{
      rc = FUNC5(fd, op, pArg);
    }
    FUNC2(pBtree);
  }
  FUNC12(db->mutex);
  return rc;
}