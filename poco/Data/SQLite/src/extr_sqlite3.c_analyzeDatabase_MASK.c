#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_14__ {int nTab; int nMem; TYPE_2__* db; } ;
struct TYPE_13__ {int /*<<< orphan*/  tblHash; } ;
struct TYPE_11__ {TYPE_3__* pSchema; } ;
typedef  TYPE_3__ Schema ;
typedef  TYPE_4__ Parse ;
typedef  int /*<<< orphan*/  HashElem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(Parse *pParse, int iDb){
  sqlite3 *db = pParse->db;
  Schema *pSchema = db->aDb[iDb].pSchema;    /* Schema of database iDb */
  HashElem *k;
  int iStatCur;
  int iMem;
  int iTab;

  FUNC4(pParse, 0, iDb);
  iStatCur = pParse->nTab;
  pParse->nTab += 3;
  FUNC3(pParse, iDb, iStatCur, 0, 0);
  iMem = pParse->nMem+1;
  iTab = pParse->nTab;
  FUNC1( FUNC5(db, iDb, 0) );
  for(k=FUNC7(&pSchema->tblHash); k; k=FUNC8(k)){
    Table *pTab = (Table*)FUNC6(k);
    FUNC0(pParse, pTab, 0, iStatCur, iMem, iTab);
  }
  FUNC2(pParse, iDb);
}