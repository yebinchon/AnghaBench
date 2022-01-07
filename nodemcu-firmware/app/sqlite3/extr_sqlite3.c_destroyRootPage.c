
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_12__ {TYPE_2__* db; } ;
struct TYPE_11__ {TYPE_1__* aDb; } ;
struct TYPE_10__ {int zDbSName; } ;
typedef TYPE_3__ Parse ;


 int MASTER_NAME ;
 int OP_Destroy ;
 int assert (int) ;
 int sqlite3GetTempReg (TYPE_3__*) ;
 int * sqlite3GetVdbe (TYPE_3__*) ;
 int sqlite3MayAbort (TYPE_3__*) ;
 int sqlite3NestedParse (TYPE_3__*,char*,int ,int ,int,int,int) ;
 int sqlite3ReleaseTempReg (TYPE_3__*,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;

__attribute__((used)) static void destroyRootPage(Parse *pParse, int iTable, int iDb){
  Vdbe *v = sqlite3GetVdbe(pParse);
  int r1 = sqlite3GetTempReg(pParse);
  assert( iTable>1 );
  sqlite3VdbeAddOp3(v, OP_Destroy, iTable, r1, iDb);
  sqlite3MayAbort(pParse);
  sqlite3NestedParse(pParse,
     "UPDATE %Q.%s SET rootpage=%d WHERE #%d AND rootpage=#%d",
     pParse->db->aDb[iDb].zDbSName, MASTER_NAME, iTable, r1, r1);

  sqlite3ReleaseTempReg(pParse, r1);
}
