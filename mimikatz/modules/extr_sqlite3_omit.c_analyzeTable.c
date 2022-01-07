
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int zName; int pSchema; } ;
typedef TYPE_1__ Table ;
struct TYPE_15__ {int zName; } ;
struct TYPE_14__ {int nTab; scalar_t__ nMem; int db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 int analyzeOneTable (TYPE_2__*,TYPE_1__*,TYPE_3__*,int,scalar_t__,int) ;
 int assert (int) ;
 int loadAnalysis (TYPE_2__*,int) ;
 int openStatTable (TYPE_2__*,int,int,int ,char*) ;
 int sqlite3BeginWriteOperation (TYPE_2__*,int ,int) ;
 int sqlite3BtreeHoldsAllMutexes (int ) ;
 int sqlite3SchemaToIndex (int ,int ) ;

__attribute__((used)) static void analyzeTable(Parse *pParse, Table *pTab, Index *pOnlyIdx){
  int iDb;
  int iStatCur;

  assert( pTab!=0 );
  assert( sqlite3BtreeHoldsAllMutexes(pParse->db) );
  iDb = sqlite3SchemaToIndex(pParse->db, pTab->pSchema);
  sqlite3BeginWriteOperation(pParse, 0, iDb);
  iStatCur = pParse->nTab;
  pParse->nTab += 3;
  if( pOnlyIdx ){
    openStatTable(pParse, iDb, iStatCur, pOnlyIdx->zName, "idx");
  }else{
    openStatTable(pParse, iDb, iStatCur, pTab->zName, "tbl");
  }
  analyzeOneTable(pParse, pTab, pOnlyIdx, iStatCur,pParse->nMem+1,pParse->nTab);
  loadAnalysis(pParse, iDb);
}
