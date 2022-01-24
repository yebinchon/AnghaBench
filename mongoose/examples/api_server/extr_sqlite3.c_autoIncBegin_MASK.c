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
struct TYPE_9__ {int tabFlags; } ;
typedef  TYPE_1__ Table ;
struct TYPE_11__ {int iDb; int regCtr; TYPE_1__* pTab; struct TYPE_11__* pNext; } ;
struct TYPE_10__ {int nMem; TYPE_3__* pAinc; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ AutoincInfo ;

/* Variables and functions */
 int TF_Autoincrement ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(
  Parse *pParse,      /* Parsing context */
  int iDb,            /* Index of the database holding pTab */
  Table *pTab         /* The table we are writing to */
){
  int memId = 0;      /* Register holding maximum rowid */
  if( pTab->tabFlags & TF_Autoincrement ){
    Parse *pToplevel = FUNC1(pParse);
    AutoincInfo *pInfo;

    pInfo = pToplevel->pAinc;
    while( pInfo && pInfo->pTab!=pTab ){ pInfo = pInfo->pNext; }
    if( pInfo==0 ){
      pInfo = FUNC0(pParse->db, sizeof(*pInfo));
      if( pInfo==0 ) return 0;
      pInfo->pNext = pToplevel->pAinc;
      pToplevel->pAinc = pInfo;
      pInfo->pTab = pTab;
      pInfo->iDb = iDb;
      pToplevel->nMem++;                  /* Register to hold name of table */
      pInfo->regCtr = ++pToplevel->nMem;  /* Max rowid register */
      pToplevel->nMem++;                  /* Rowid in sqlite_sequence */
    }
    memId = pInfo->regCtr;
  }
  return memId;
}