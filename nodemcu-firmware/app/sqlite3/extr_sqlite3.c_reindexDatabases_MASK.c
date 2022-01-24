#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nDb; TYPE_4__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_11__ {TYPE_1__* pSchema; } ;
struct TYPE_10__ {TYPE_2__* db; } ;
struct TYPE_8__ {int /*<<< orphan*/  tblHash; } ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  TYPE_4__ Db ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(Parse *pParse, char const *zColl){
  Db *pDb;                    /* A single database */
  int iDb;                    /* The database index number */
  sqlite3 *db = pParse->db;   /* The database connection */
  HashElem *k;                /* For looping over tables in pDb */
  Table *pTab;                /* A table in the database */

  FUNC0( FUNC2(db) );  /* Needed for schema access */
  for(iDb=0, pDb=db->aDb; iDb<db->nDb; iDb++, pDb++){
    FUNC0( pDb!=0 );
    for(k=FUNC4(&pDb->pSchema->tblHash);  k; k=FUNC5(k)){
      pTab = (Table*)FUNC3(k);
      FUNC1(pParse, pTab, zColl);
    }
  }
}