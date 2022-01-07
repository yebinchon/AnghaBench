
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Walker ;
typedef int Select ;


 int WRC_Continue ;
 int renameWalkWith (int *,int *) ;

__attribute__((used)) static int renameColumnSelectCb(Walker *pWalker, Select *p){
  renameWalkWith(pWalker, p);
  return WRC_Continue;
}
