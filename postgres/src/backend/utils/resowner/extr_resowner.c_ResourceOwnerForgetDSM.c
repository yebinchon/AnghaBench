
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_3__ {int name; int dsmarr; } ;
typedef TYPE_1__* ResourceOwner ;


 int ERROR ;
 int PointerGetDatum (int *) ;
 int ResourceArrayRemove (int *,int ) ;
 int dsm_segment_handle (int *) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetDSM(ResourceOwner owner, dsm_segment *seg)
{
 if (!ResourceArrayRemove(&(owner->dsmarr), PointerGetDatum(seg)))
  elog(ERROR, "dynamic shared memory segment %u is not owned by resource owner %s",
    dsm_segment_handle(seg), owner->name);
}
