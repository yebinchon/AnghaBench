#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nDb; TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_11__ {int /*<<< orphan*/  tblHash; } ;
struct TYPE_9__ {TYPE_3__* pSchema; } ;
typedef  TYPE_3__ Schema ;
typedef  int /*<<< orphan*/  HashElem ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(sqlite3 *db){
#ifndef SQLITE_OMIT_VIRTUALTABLE
  int i;
  FUNC2(db);
  for(i=0; i<db->nDb; i++){
    Schema *pSchema = db->aDb[i].pSchema;
    if( db->aDb[i].pSchema ){
      HashElem *p;
      for(p=FUNC6(&pSchema->tblHash); p; p=FUNC7(p)){
        Table *pTab = (Table *)FUNC5(p);
        if( FUNC0(pTab) ) FUNC4(db, pTab);
      }
    }
  }
  FUNC3(db);
#else
  UNUSED_PARAMETER(db);
#endif
}