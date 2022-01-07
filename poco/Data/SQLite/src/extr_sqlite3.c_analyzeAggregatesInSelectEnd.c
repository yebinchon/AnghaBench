
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int walkerDepth; } ;
typedef TYPE_1__ Walker ;
typedef int Select ;


 int UNUSED_PARAMETER (int *) ;

__attribute__((used)) static void analyzeAggregatesInSelectEnd(Walker *pWalker, Select *pSelect){
  UNUSED_PARAMETER(pSelect);
  pWalker->walkerDepth--;
}
