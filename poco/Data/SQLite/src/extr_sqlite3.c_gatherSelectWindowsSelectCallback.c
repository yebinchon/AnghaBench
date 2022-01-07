
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pSelect; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ Walker ;
typedef int Select ;


 int WRC_Continue ;
 int WRC_Prune ;

__attribute__((used)) static int gatherSelectWindowsSelectCallback(Walker *pWalker, Select *p){
  return p==pWalker->u.pSelect ? WRC_Continue : WRC_Prune;
}
