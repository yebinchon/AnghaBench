#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zErr ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_5__ {int nDb; int /*<<< orphan*/  autoCommit; TYPE_2__* aDb; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_6__ {scalar_t__ pBt; scalar_t__ pSchema; int /*<<< orphan*/  zName; } ;
typedef  TYPE_2__ Db ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  const char *zName = (const char *)FUNC9(argv[0]);
  sqlite3 *db = FUNC6(context);
  int i;
  Db *pDb = 0;
  char zErr[128];

  FUNC0(NotUsed);

  if( zName==0 ) zName = "";
  for(i=0; i<db->nDb; i++){
    pDb = &db->aDb[i];
    if( pDb->pBt==0 ) continue;
    if( FUNC5(pDb->zName, zName)==0 ) break;
  }

  if( i>=db->nDb ){
    FUNC8(sizeof(zErr),zErr, "no such database: %s", zName);
    goto detach_error;
  }
  if( i<2 ){
    FUNC8(sizeof(zErr),zErr, "cannot detach database %s", zName);
    goto detach_error;
  }
  if( !db->autoCommit ){
    FUNC8(sizeof(zErr), zErr,
                     "cannot DETACH database within transaction");
    goto detach_error;
  }
  if( FUNC3(pDb->pBt) || FUNC2(pDb->pBt) ){
    FUNC8(sizeof(zErr),zErr, "database %s is locked", zName);
    goto detach_error;
  }

  FUNC1(pDb->pBt);
  pDb->pBt = 0;
  pDb->pSchema = 0;
  FUNC4(db);
  return;

detach_error:
  FUNC7(context, zErr, -1);
}