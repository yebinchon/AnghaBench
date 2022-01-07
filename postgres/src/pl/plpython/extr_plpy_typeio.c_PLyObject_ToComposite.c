
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;


typedef TYPE_4__* TupleDesc ;
struct TYPE_22__ {scalar_t__ tupdescid; scalar_t__ natts; TYPE_4__* recdesc; TYPE_1__* typentry; } ;
struct TYPE_23__ {TYPE_2__ tuple; } ;
struct TYPE_25__ {scalar_t__ typoid; TYPE_3__ u; int typmod; } ;
struct TYPE_24__ {scalar_t__ natts; } ;
struct TYPE_21__ {scalar_t__ tupDesc_identifier; TYPE_4__* tupDesc; } ;
struct TYPE_20__ {int curr_proc; } ;
typedef int PyObject ;
typedef TYPE_5__ PLyObToDatum ;
typedef int Datum ;


 int Assert (int) ;
 int PLyGenericObject_ToComposite (TYPE_5__*,TYPE_4__*,int *,int) ;
 int PLyMapping_ToComposite (TYPE_5__*,TYPE_4__*,int *) ;
 int PLySequence_ToComposite (TYPE_5__*,TYPE_4__*,int *) ;
 int PLyString_ToComposite (TYPE_5__*,int *,int) ;
 TYPE_11__* PLy_current_execution_context () ;
 int PLy_output_setup_tuple (TYPE_5__*,TYPE_4__*,int ) ;
 int PinTupleDesc (TYPE_4__*) ;
 scalar_t__ PyMapping_Check (int *) ;
 scalar_t__ PySequence_Check (int *) ;
 scalar_t__ PyString_Check (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int * Py_None ;
 scalar_t__ RECORDOID ;
 int ReleaseTupleDesc (TYPE_4__*) ;
 TYPE_4__* lookup_rowtype_tupdesc (scalar_t__,int ) ;

__attribute__((used)) static Datum
PLyObject_ToComposite(PLyObToDatum *arg, PyObject *plrv,
       bool *isnull, bool inarray)
{
 Datum rv;
 TupleDesc desc;

 if (plrv == Py_None)
 {
  *isnull = 1;
  return (Datum) 0;
 }
 *isnull = 0;





 if (PyString_Check(plrv) || PyUnicode_Check(plrv))
  return PLyString_ToComposite(arg, plrv, inarray);







 if (arg->typoid != RECORDOID)
 {
  desc = lookup_rowtype_tupdesc(arg->typoid, arg->typmod);

  Assert(desc == arg->u.tuple.typentry->tupDesc);

  if (arg->u.tuple.tupdescid != arg->u.tuple.typentry->tupDesc_identifier)
  {
   PLy_output_setup_tuple(arg, desc,
           PLy_current_execution_context()->curr_proc);
   arg->u.tuple.tupdescid = arg->u.tuple.typentry->tupDesc_identifier;
  }
 }
 else
 {
  desc = arg->u.tuple.recdesc;
  if (desc == ((void*)0))
  {
   desc = lookup_rowtype_tupdesc(arg->typoid, arg->typmod);
   arg->u.tuple.recdesc = desc;
  }
  else
  {

   PinTupleDesc(desc);
  }
 }


 Assert(desc->natts == arg->u.tuple.natts);





 if (PySequence_Check(plrv))

  rv = PLySequence_ToComposite(arg, desc, plrv);
 else if (PyMapping_Check(plrv))

  rv = PLyMapping_ToComposite(arg, desc, plrv);
 else

  rv = PLyGenericObject_ToComposite(arg, desc, plrv, inarray);

 ReleaseTupleDesc(desc);

 return rv;
}
