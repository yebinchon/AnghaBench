
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int snapshotarr; } ;
typedef int Snapshot ;
typedef TYPE_1__* ResourceOwner ;


 int ERROR ;
 int PointerGetDatum (int ) ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetSnapshot(ResourceOwner owner, Snapshot snapshot)
{
 if (!ResourceArrayRemove(&(owner->snapshotarr), PointerGetDatum(snapshot)))
  elog(ERROR, "snapshot reference %p is not owned by resource owner %s",
    snapshot, owner->name);
}
