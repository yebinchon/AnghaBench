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
struct TYPE_7__ {scalar_t__ pMethods; } ;
typedef  TYPE_1__ sqlite3_file ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Pager ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_FCNTL_FILE_POINTER ; 
 int SQLITE_NOTFOUND ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,char const*) ; 
 int FUNC5 (TYPE_1__*,int,void*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(sqlite3 *db, const char *zDbName, int op, void *pArg){
  int rc = SQLITE_ERROR;
  Btree *pBtree;

  FUNC7(db->mutex);
  pBtree = FUNC4(db, zDbName);
  if( pBtree ){
    Pager *pPager;
    sqlite3_file *fd;
    FUNC1(pBtree);
    pPager = FUNC3(pBtree);
    FUNC0( pPager!=0 );
    fd = FUNC6(pPager);
    FUNC0( fd!=0 );
    if( op==SQLITE_FCNTL_FILE_POINTER ){
      *(sqlite3_file**)pArg = fd;
      rc = SQLITE_OK;
    }else if( fd->pMethods ){
      rc = FUNC5(fd, op, pArg);
    }else{
      rc = SQLITE_NOTFOUND;
    }
    FUNC2(pBtree);
  }
  FUNC8(db->mutex);
  return rc;   
}