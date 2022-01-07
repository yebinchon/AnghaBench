
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_4__* TupleDesc ;
struct TYPE_11__ {TYPE_3__* recdesc; } ;
struct TYPE_12__ {TYPE_1__ tuple; } ;
struct TYPE_15__ {scalar_t__ typoid; TYPE_2__ u; int typmod; } ;
struct TYPE_14__ {scalar_t__ tdtypeid; int tdtypmod; } ;
struct TYPE_13__ {int tdtypmod; } ;
typedef int PLyProcedure ;
typedef TYPE_5__ PLyObToDatum ;


 int Assert (int) ;
 int BlessTupleDesc (TYPE_4__*) ;
 int PLy_output_setup_tuple (TYPE_5__*,TYPE_4__*,int *) ;
 scalar_t__ RECORDOID ;

void
PLy_output_setup_record(PLyObToDatum *arg, TupleDesc desc, PLyProcedure *proc)
{

 Assert(arg->typoid == RECORDOID);
 Assert(desc->tdtypeid == RECORDOID);






 BlessTupleDesc(desc);






 arg->typmod = desc->tdtypmod;
 if (arg->u.tuple.recdesc &&
  arg->u.tuple.recdesc->tdtypmod != arg->typmod)
  arg->u.tuple.recdesc = ((void*)0);


 PLy_output_setup_tuple(arg, desc, proc);
}
