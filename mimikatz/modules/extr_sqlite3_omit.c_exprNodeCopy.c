
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int exprStructSize (int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void exprNodeCopy(Expr *pDest, Expr *pSrc){
  memset(pDest, 0, sizeof(Expr));
  memcpy(pDest, pSrc, exprStructSize(pSrc));
}
