
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * resowner; } ;
typedef TYPE_1__ dsm_segment ;


 int Assert (int ) ;
 int * CurrentResourceOwner ;
 int ResourceOwnerEnlargeDSMs (int *) ;
 int ResourceOwnerRememberDSM (int *,TYPE_1__*) ;

void
dsm_unpin_mapping(dsm_segment *seg)
{
 Assert(seg->resowner == ((void*)0));
 ResourceOwnerEnlargeDSMs(CurrentResourceOwner);
 seg->resowner = CurrentResourceOwner;
 ResourceOwnerRememberDSM(seg->resowner, seg);
}
