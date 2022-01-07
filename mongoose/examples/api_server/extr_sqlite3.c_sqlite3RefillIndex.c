
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_23__ {int zName; int tnum; } ;
typedef TYPE_3__ Table ;
struct TYPE_25__ {int tnum; scalar_t__ onError; int zName; int pSchema; TYPE_3__* pTable; } ;
struct TYPE_24__ {int nTab; TYPE_2__* db; } ;
struct TYPE_21__ {int zName; } ;
typedef TYPE_4__ Parse ;
typedef int KeyInfo ;
typedef TYPE_5__ Index ;


 int OE_Abort ;
 scalar_t__ OE_None ;
 int OPFLAG_BULKCSR ;
 int OPFLAG_P2ISREG ;
 int OPFLAG_USESEEKRESULT ;
 int OP_Clear ;
 int OP_Close ;
 int OP_Goto ;
 int OP_IdxInsert ;
 int OP_Next ;
 int OP_OpenRead ;
 int OP_OpenWrite ;
 int OP_Rewind ;
 int OP_SorterCompare ;
 int OP_SorterData ;
 int OP_SorterInsert ;
 int OP_SorterNext ;
 int OP_SorterOpen ;
 int OP_SorterSort ;
 int P4_KEYINFO ;
 int P4_KEYINFO_HANDOFF ;
 int P4_STATIC ;
 int SQLITE_CONSTRAINT_UNIQUE ;
 int SQLITE_REINDEX ;
 scalar_t__ sqlite3AuthCheck (TYPE_4__*,int ,int ,int ,int ) ;
 int sqlite3GenerateIndexKey (TYPE_4__*,TYPE_5__*,int,int,int) ;
 int sqlite3GetTempReg (TYPE_4__*) ;
 int * sqlite3GetVdbe (TYPE_4__*) ;
 int sqlite3HaltConstraint (TYPE_4__*,int ,int ,char*,int ) ;
 int * sqlite3IndexKeyinfo (TYPE_4__*,TYPE_5__*) ;
 int sqlite3OpenTable (TYPE_4__*,int,int,TYPE_3__*,int ) ;
 int sqlite3ReleaseTempReg (TYPE_4__*,int) ;
 int sqlite3SchemaToIndex (TYPE_2__*,int ) ;
 int sqlite3TableLock (TYPE_4__*,int,int ,int,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;

__attribute__((used)) static void sqlite3RefillIndex(Parse *pParse, Index *pIndex, int memRootPage){
  Table *pTab = pIndex->pTable;
  int iTab = pParse->nTab++;
  int iIdx = pParse->nTab++;
  int iSorter;
  int addr1;
  int addr2;
  int tnum;
  Vdbe *v;
  KeyInfo *pKey;
  int regRecord;
  sqlite3 *db = pParse->db;
  int iDb = sqlite3SchemaToIndex(db, pIndex->pSchema);


  if( sqlite3AuthCheck(pParse, SQLITE_REINDEX, pIndex->zName, 0,
      db->aDb[iDb].zName ) ){
    return;
  }



  sqlite3TableLock(pParse, iDb, pTab->tnum, 1, pTab->zName);

  v = sqlite3GetVdbe(pParse);
  if( v==0 ) return;
  if( memRootPage>=0 ){
    tnum = memRootPage;
  }else{
    tnum = pIndex->tnum;
    sqlite3VdbeAddOp2(v, OP_Clear, tnum, iDb);
  }
  pKey = sqlite3IndexKeyinfo(pParse, pIndex);
  sqlite3VdbeAddOp4(v, OP_OpenWrite, iIdx, tnum, iDb,
                    (char *)pKey, P4_KEYINFO_HANDOFF);
  sqlite3VdbeChangeP5(v, OPFLAG_BULKCSR|((memRootPage>=0)?OPFLAG_P2ISREG:0));


  iSorter = pParse->nTab++;
  sqlite3VdbeAddOp4(v, OP_SorterOpen, iSorter, 0, 0, (char*)pKey, P4_KEYINFO);



  sqlite3OpenTable(pParse, iTab, iDb, pTab, OP_OpenRead);
  addr1 = sqlite3VdbeAddOp2(v, OP_Rewind, iTab, 0);
  regRecord = sqlite3GetTempReg(pParse);

  sqlite3GenerateIndexKey(pParse, pIndex, iTab, regRecord, 1);
  sqlite3VdbeAddOp2(v, OP_SorterInsert, iSorter, regRecord);
  sqlite3VdbeAddOp2(v, OP_Next, iTab, addr1+1);
  sqlite3VdbeJumpHere(v, addr1);
  addr1 = sqlite3VdbeAddOp2(v, OP_SorterSort, iSorter, 0);
  if( pIndex->onError!=OE_None ){
    int j2 = sqlite3VdbeCurrentAddr(v) + 3;
    sqlite3VdbeAddOp2(v, OP_Goto, 0, j2);
    addr2 = sqlite3VdbeCurrentAddr(v);
    sqlite3VdbeAddOp3(v, OP_SorterCompare, iSorter, j2, regRecord);
    sqlite3HaltConstraint(pParse, SQLITE_CONSTRAINT_UNIQUE,
        OE_Abort, "indexed columns are not unique", P4_STATIC
    );
  }else{
    addr2 = sqlite3VdbeCurrentAddr(v);
  }
  sqlite3VdbeAddOp2(v, OP_SorterData, iSorter, regRecord);
  sqlite3VdbeAddOp3(v, OP_IdxInsert, iIdx, regRecord, 1);
  sqlite3VdbeChangeP5(v, OPFLAG_USESEEKRESULT);
  sqlite3ReleaseTempReg(pParse, regRecord);
  sqlite3VdbeAddOp2(v, OP_SorterNext, iSorter, addr2);
  sqlite3VdbeJumpHere(v, addr1);

  sqlite3VdbeAddOp1(v, OP_Close, iTab);
  sqlite3VdbeAddOp1(v, OP_Close, iIdx);
  sqlite3VdbeAddOp1(v, OP_Close, iSorter);
}
