
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * resultRelInfo; int * rootResultRelInfo; } ;
typedef int ResultRelInfo ;
typedef TYPE_1__ ModifyTableState ;



__attribute__((used)) static ResultRelInfo *
getTargetResultRelInfo(ModifyTableState *node)
{




 if (node->rootResultRelInfo != ((void*)0))
  return node->rootResultRelInfo;
 else
  return node->resultRelInfo;
}
