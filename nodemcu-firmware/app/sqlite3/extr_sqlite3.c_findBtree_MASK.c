#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  sParse ;
struct TYPE_14__ {int rc; char const* zErrMsg; TYPE_2__* db; } ;
struct TYPE_12__ {int /*<<< orphan*/ * pBt; } ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,char*,char const*) ; 
 int FUNC3 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static Btree *FUNC6(sqlite3 *pErrorDb, sqlite3 *pDb, const char *zDb){
  int i = FUNC3(pDb, zDb);

  if( i==1 ){
    Parse sParse;
    int rc = 0;
    FUNC0(&sParse, 0, sizeof(sParse));
    sParse.db = pDb;
    if( FUNC4(&sParse) ){
      FUNC2(pErrorDb, sParse.rc, "%s", sParse.zErrMsg);
      rc = SQLITE_ERROR;
    }
    FUNC1(pErrorDb, sParse.zErrMsg);
    FUNC5(&sParse);
    if( rc ){
      return 0;
    }
  }

  if( i<0 ){
    FUNC2(pErrorDb, SQLITE_ERROR, "unknown database %s", zDb);
    return 0;
  }

  return pDb->aDb[i].pBt;
}