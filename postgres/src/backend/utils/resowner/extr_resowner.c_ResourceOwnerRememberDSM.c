
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_3__ {int dsmarr; } ;
typedef TYPE_1__* ResourceOwner ;


 int PointerGetDatum (int *) ;
 int ResourceArrayAdd (int *,int ) ;

void
ResourceOwnerRememberDSM(ResourceOwner owner, dsm_segment *seg)
{
 ResourceArrayAdd(&(owner->dsmarr), PointerGetDatum(seg));
}
