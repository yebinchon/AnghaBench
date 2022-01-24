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
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_12__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  pSchema; struct TYPE_12__* pNext; } ;
typedef  TYPE_1__ Trigger ;
struct TYPE_13__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_2__ Table ;
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  OP_DropTable ; 
 int /*<<< orphan*/  OP_DropTrigger ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC9 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(Parse *pParse, Table *pTab, const char *zName){
  Vdbe *v;
  char *zWhere;
  int iDb;                   /* Index of database containing pTab */
#ifndef SQLITE_OMIT_TRIGGER
  Trigger *pTrig;
#endif

  v = FUNC3(pParse);
  if( FUNC0(v==0) ) return;
  FUNC1( FUNC2(pParse->db) );
  iDb = FUNC5(pParse->db, pTab->pSchema);
  FUNC1( iDb>=0 );

#ifndef SQLITE_OMIT_TRIGGER
  /* Drop any table triggers from the internal schema. */
  for(pTrig=FUNC6(pParse, pTab); pTrig; pTrig=pTrig->pNext){
    int iTrigDb = FUNC5(pParse->db, pTrig->pSchema);
    FUNC1( iTrigDb==iDb || iTrigDb==1 );
    FUNC7(v, OP_DropTrigger, iTrigDb, 0, 0, pTrig->zName, 0);
  }
#endif

  /* Drop the table and index from the internal schema.  */
  FUNC7(v, OP_DropTable, iDb, 0, 0, pTab->zName, 0);

  /* Reload the table, index and permanent trigger schemas. */
  zWhere = FUNC4(pParse->db, "tbl_name=%Q", zName);
  if( !zWhere ) return;
  FUNC8(v, iDb, zWhere);

#ifndef SQLITE_OMIT_TRIGGER
  /* Now, if the table is not stored in the temp database, reload any temp
  ** triggers. Don't use IN(...) in case SQLITE_OMIT_SUBQUERY is defined.
  */
  if( (zWhere=FUNC9(pParse, pTab))!=0 ){
    FUNC8(v, 1, zWhere);
  }
#endif
}