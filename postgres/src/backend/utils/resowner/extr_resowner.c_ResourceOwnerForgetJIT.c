
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int jitarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 int ERROR ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetJIT(ResourceOwner owner, Datum handle)
{
 if (!ResourceArrayRemove(&(owner->jitarr), handle))
  elog(ERROR, "JIT context %p is not owned by resource owner %s",
    DatumGetPointer(handle), owner->name);
}
