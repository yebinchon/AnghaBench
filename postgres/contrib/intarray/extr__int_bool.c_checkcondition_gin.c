
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* mapped_check; int * first; } ;
typedef int ITEM ;
typedef TYPE_1__ GinChkVal ;



__attribute__((used)) static bool
checkcondition_gin(void *checkval, ITEM *item)
{
 GinChkVal *gcv = (GinChkVal *) checkval;

 return gcv->mapped_check[item - gcv->first];
}
