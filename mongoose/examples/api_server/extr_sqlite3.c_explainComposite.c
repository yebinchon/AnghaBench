
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_3__ {int explain; int iSelectId; int db; int * pVdbe; } ;
typedef TYPE_1__ Parse ;


 int OP_Explain ;
 int P4_DYNAMIC ;
 int TK_ALL ;
 int TK_EXCEPT ;
 int TK_INTERSECT ;
 int TK_UNION ;
 int assert (int) ;
 int selectOpName (int) ;
 char* sqlite3MPrintf (int ,char*,int,int,char*,int ) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int ,int ,char*,int ) ;

__attribute__((used)) static void explainComposite(
  Parse *pParse,
  int op,
  int iSub1,
  int iSub2,
  int bUseTmp
){
  assert( op==TK_UNION || op==TK_EXCEPT || op==TK_INTERSECT || op==TK_ALL );
  if( pParse->explain==2 ){
    Vdbe *v = pParse->pVdbe;
    char *zMsg = sqlite3MPrintf(
        pParse->db, "COMPOUND SUBQUERIES %d AND %d %s(%s)", iSub1, iSub2,
        bUseTmp?"USING TEMP B-TREE ":"", selectOpName(op)
    );
    sqlite3VdbeAddOp4(v, OP_Explain, pParse->iSelectId, 0, 0, zMsg, P4_DYNAMIC);
  }
}
