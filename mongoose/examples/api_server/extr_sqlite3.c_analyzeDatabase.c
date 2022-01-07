
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Table ;
struct TYPE_14__ {int nTab; int nMem; TYPE_2__* db; } ;
struct TYPE_13__ {int tblHash; } ;
struct TYPE_11__ {TYPE_3__* pSchema; } ;
typedef TYPE_3__ Schema ;
typedef TYPE_4__ Parse ;
typedef int HashElem ;


 int analyzeOneTable (TYPE_4__*,int *,int ,int,int) ;
 int assert (int ) ;
 int loadAnalysis (TYPE_4__*,int) ;
 int openStatTable (TYPE_4__*,int,int,int ,int ) ;
 int sqlite3BeginWriteOperation (TYPE_4__*,int ,int) ;
 int sqlite3SchemaMutexHeld (TYPE_2__*,int,int ) ;
 scalar_t__ sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

__attribute__((used)) static void analyzeDatabase(Parse *pParse, int iDb){
  sqlite3 *db = pParse->db;
  Schema *pSchema = db->aDb[iDb].pSchema;
  HashElem *k;
  int iStatCur;
  int iMem;

  sqlite3BeginWriteOperation(pParse, 0, iDb);
  iStatCur = pParse->nTab;
  pParse->nTab += 3;
  openStatTable(pParse, iDb, iStatCur, 0, 0);
  iMem = pParse->nMem+1;
  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  for(k=sqliteHashFirst(&pSchema->tblHash); k; k=sqliteHashNext(k)){
    Table *pTab = (Table*)sqliteHashData(k);
    analyzeOneTable(pParse, pTab, 0, iStatCur, iMem);
  }
  loadAnalysis(pParse, iDb);
}
