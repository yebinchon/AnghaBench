
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_4__ {scalar_t__ tdrefcount; } ;


 int Assert (int) ;
 int CurrentResourceOwner ;
 int ResourceOwnerEnlargeTupleDescs (int ) ;
 int ResourceOwnerRememberTupleDesc (int ,TYPE_1__*) ;

void
IncrTupleDescRefCount(TupleDesc tupdesc)
{
 Assert(tupdesc->tdrefcount >= 0);

 ResourceOwnerEnlargeTupleDescs(CurrentResourceOwner);
 tupdesc->tdrefcount++;
 ResourceOwnerRememberTupleDesc(CurrentResourceOwner, tupdesc);
}
