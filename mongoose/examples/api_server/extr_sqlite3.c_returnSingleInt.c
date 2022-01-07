
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int value ;
typedef int i64 ;
typedef int Vdbe ;
struct TYPE_4__ {int nMem; int db; } ;
typedef TYPE_1__ Parse ;


 int COLNAME_NAME ;
 int OP_Int64 ;
 int OP_ResultRow ;
 int P4_INT64 ;
 int SQLITE_STATIC ;
 int memcpy (int *,int *,int) ;
 int * sqlite3DbMallocRaw (int ,int) ;
 int * sqlite3GetVdbe (TYPE_1__*) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int ,char*,int ) ;
 int sqlite3VdbeSetColName (int *,int ,int ,char const*,int ) ;
 int sqlite3VdbeSetNumCols (int *,int) ;

__attribute__((used)) static void returnSingleInt(Parse *pParse, const char *zLabel, i64 value){
  Vdbe *v = sqlite3GetVdbe(pParse);
  int mem = ++pParse->nMem;
  i64 *pI64 = sqlite3DbMallocRaw(pParse->db, sizeof(value));
  if( pI64 ){
    memcpy(pI64, &value, sizeof(value));
  }
  sqlite3VdbeAddOp4(v, OP_Int64, 0, mem, 0, (char*)pI64, P4_INT64);
  sqlite3VdbeSetNumCols(v, 1);
  sqlite3VdbeSetColName(v, 0, COLNAME_NAME, zLabel, SQLITE_STATIC);
  sqlite3VdbeAddOp2(v, OP_ResultRow, mem, 1);
}
