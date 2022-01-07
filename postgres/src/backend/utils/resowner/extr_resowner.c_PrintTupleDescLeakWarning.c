
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_4__ {int tdtypmod; int tdtypeid; } ;


 int WARNING ;
 int elog (int ,char*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
PrintTupleDescLeakWarning(TupleDesc tupdesc)
{
 elog(WARNING,
   "TupleDesc reference leak: TupleDesc %p (%u,%d) still referenced",
   tupdesc, tupdesc->tdtypeid, tupdesc->tdtypmod);
}
