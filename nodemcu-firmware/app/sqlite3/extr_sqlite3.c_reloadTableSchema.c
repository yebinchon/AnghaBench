
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_12__ {int zName; int pSchema; struct TYPE_12__* pNext; } ;
typedef TYPE_1__ Trigger ;
struct TYPE_13__ {int zName; int pSchema; } ;
typedef TYPE_2__ Table ;
struct TYPE_14__ {int db; } ;
typedef TYPE_3__ Parse ;


 scalar_t__ NEVER (int) ;
 int OP_DropTable ;
 int OP_DropTrigger ;
 int assert (int) ;
 int sqlite3BtreeHoldsAllMutexes (int ) ;
 int * sqlite3GetVdbe (TYPE_3__*) ;
 char* sqlite3MPrintf (int ,char*,char const*) ;
 int sqlite3SchemaToIndex (int ,int ) ;
 TYPE_1__* sqlite3TriggerList (TYPE_3__*,TYPE_2__*) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,int ,int ) ;
 int sqlite3VdbeAddParseSchemaOp (int *,int,char*) ;
 char* whereTempTriggers (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void reloadTableSchema(Parse *pParse, Table *pTab, const char *zName){
  Vdbe *v;
  char *zWhere;
  int iDb;

  Trigger *pTrig;


  v = sqlite3GetVdbe(pParse);
  if( NEVER(v==0) ) return;
  assert( sqlite3BtreeHoldsAllMutexes(pParse->db) );
  iDb = sqlite3SchemaToIndex(pParse->db, pTab->pSchema);
  assert( iDb>=0 );



  for(pTrig=sqlite3TriggerList(pParse, pTab); pTrig; pTrig=pTrig->pNext){
    int iTrigDb = sqlite3SchemaToIndex(pParse->db, pTrig->pSchema);
    assert( iTrigDb==iDb || iTrigDb==1 );
    sqlite3VdbeAddOp4(v, OP_DropTrigger, iTrigDb, 0, 0, pTrig->zName, 0);
  }



  sqlite3VdbeAddOp4(v, OP_DropTable, iDb, 0, 0, pTab->zName, 0);


  zWhere = sqlite3MPrintf(pParse->db, "tbl_name=%Q", zName);
  if( !zWhere ) return;
  sqlite3VdbeAddParseSchemaOp(v, iDb, zWhere);





  if( (zWhere=whereTempTriggers(pParse, pTab))!=0 ){
    sqlite3VdbeAddParseSchemaOp(v, 1, zWhere);
  }

}
