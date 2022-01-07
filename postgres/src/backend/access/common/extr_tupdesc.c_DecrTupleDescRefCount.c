
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_5__ {scalar_t__ tdrefcount; } ;


 int Assert (int) ;
 int CurrentResourceOwner ;
 int FreeTupleDesc (TYPE_1__*) ;
 int ResourceOwnerForgetTupleDesc (int ,TYPE_1__*) ;

void
DecrTupleDescRefCount(TupleDesc tupdesc)
{
 Assert(tupdesc->tdrefcount > 0);

 ResourceOwnerForgetTupleDesc(CurrentResourceOwner, tupdesc);
 if (--tupdesc->tdrefcount == 0)
  FreeTupleDesc(tupdesc);
}
