
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct SrcList_item {scalar_t__ iCursor; TYPE_2__* pTab; } ;
struct TYPE_9__ {size_t leftColumn; } ;
struct TYPE_10__ {scalar_t__ leftCursor; int eOperator; int prereqRight; TYPE_6__* pExpr; TYPE_3__ u; } ;
typedef TYPE_4__ WhereTerm ;
struct TYPE_11__ {scalar_t__ op; } ;
struct TYPE_8__ {TYPE_1__* aCol; } ;
struct TYPE_7__ {char affinity; } ;
typedef int Bitmask ;


 scalar_t__ TK_IS ;
 int WO_EQ ;
 int WO_IS ;
 int sqlite3IndexAffinityOk (TYPE_6__*,char) ;
 int testcase (int) ;

__attribute__((used)) static int termCanDriveIndex(
  WhereTerm *pTerm,
  struct SrcList_item *pSrc,
  Bitmask notReady
){
  char aff;
  if( pTerm->leftCursor!=pSrc->iCursor ) return 0;
  if( (pTerm->eOperator & (WO_EQ|WO_IS))==0 ) return 0;
  if( (pTerm->prereqRight & notReady)!=0 ) return 0;
  if( pTerm->u.leftColumn<0 ) return 0;
  aff = pSrc->pTab->aCol[pTerm->u.leftColumn].affinity;
  if( !sqlite3IndexAffinityOk(pTerm->pExpr, aff) ) return 0;
  testcase( pTerm->pExpr->op==TK_IS );
  return 1;
}
