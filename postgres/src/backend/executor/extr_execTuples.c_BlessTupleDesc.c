
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_5__ {scalar_t__ tdtypeid; scalar_t__ tdtypmod; } ;


 scalar_t__ RECORDOID ;
 int assign_record_type_typmod (TYPE_1__*) ;

TupleDesc
BlessTupleDesc(TupleDesc tupdesc)
{
 if (tupdesc->tdtypeid == RECORDOID &&
  tupdesc->tdtypmod < 0)
  assign_record_type_typmod(tupdesc);

 return tupdesc;
}
