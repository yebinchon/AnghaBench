
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * resowner; } ;
typedef TYPE_1__ dsm_segment ;


 int ResourceOwnerForgetDSM (int *,TYPE_1__*) ;

void
dsm_pin_mapping(dsm_segment *seg)
{
 if (seg->resowner != ((void*)0))
 {
  ResourceOwnerForgetDSM(seg->resowner, seg);
  seg->resowner = ((void*)0);
 }
}
