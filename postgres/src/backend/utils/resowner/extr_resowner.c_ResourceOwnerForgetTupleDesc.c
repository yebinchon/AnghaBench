
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {int name; int tupdescarr; } ;
typedef TYPE_1__* ResourceOwner ;


 int ERROR ;
 int PointerGetDatum (int ) ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetTupleDesc(ResourceOwner owner, TupleDesc tupdesc)
{
 if (!ResourceArrayRemove(&(owner->tupdescarr), PointerGetDatum(tupdesc)))
  elog(ERROR, "tupdesc reference %p is not owned by resource owner %s",
    tupdesc, owner->name);
}
