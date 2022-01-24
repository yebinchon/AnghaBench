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
typedef  int /*<<< orphan*/  sqlite3_module ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  aModule; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/  const*,void*,void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
  sqlite3 *db,                    /* Database in which module is registered */
  const char *zName,              /* Name assigned to this module */
  const sqlite3_module *pModule,  /* The definition of the module */
  void *pAux,                     /* Context pointer for xCreate/xConnect */
  void (*xDestroy)(void *)        /* Module destructor function */
){
  int rc = SQLITE_OK;

  FUNC3(db->mutex);
  if( FUNC1(&db->aModule, zName) ){
    rc = SQLITE_MISUSE_BKPT;
  }else{
    (void)FUNC2(db, zName, pModule, pAux, xDestroy);
  }
  rc = FUNC0(db, rc);
  if( rc!=SQLITE_OK && xDestroy ) xDestroy(pAux);
  FUNC4(db->mutex);
  return rc;
}