
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eDest; } ;
typedef TYPE_1__ SelectDest ;
typedef int Parse ;


 int SRT_Mem ;
 int SRT_Set ;
 int sqlite3ErrorMsg (int *,char*) ;

__attribute__((used)) static int checkForMultiColumnSelectError(
  Parse *pParse,
  SelectDest *pDest,
  int nExpr
){
  int eDest = pDest->eDest;
  if( nExpr>1 && (eDest==SRT_Mem || eDest==SRT_Set) ){
    sqlite3ErrorMsg(pParse, "only a single result allowed for "
       "a SELECT that is part of an expression");
    return 1;
  }else{
    return 0;
  }
}
