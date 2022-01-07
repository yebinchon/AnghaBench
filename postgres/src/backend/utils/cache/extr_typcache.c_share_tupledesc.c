
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int dsa_pointer ;
typedef int dsa_area ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_6__ {int tdtypmod; } ;


 int TupleDescCopy (TYPE_1__*,TYPE_1__*) ;
 int TupleDescSize (TYPE_1__*) ;
 int dsa_allocate (int *,int ) ;
 scalar_t__ dsa_get_address (int *,int ) ;

__attribute__((used)) static dsa_pointer
share_tupledesc(dsa_area *area, TupleDesc tupdesc, uint32 typmod)
{
 dsa_pointer shared_dp;
 TupleDesc shared;

 shared_dp = dsa_allocate(area, TupleDescSize(tupdesc));
 shared = (TupleDesc) dsa_get_address(area, shared_dp);
 TupleDescCopy(shared, tupdesc);
 shared->tdtypmod = typmod;

 return shared_dp;
}
