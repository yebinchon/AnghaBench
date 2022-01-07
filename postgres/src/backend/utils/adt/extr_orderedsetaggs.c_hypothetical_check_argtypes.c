
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_10__ {scalar_t__ atttypid; } ;
struct TYPE_9__ {int flinfo; } ;
struct TYPE_8__ {int natts; } ;
typedef TYPE_2__* FunctionCallInfo ;
typedef TYPE_3__* Form_pg_attribute ;


 int ERROR ;
 scalar_t__ INT4OID ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int elog (int ,char*) ;
 scalar_t__ get_fn_expr_argtype (int ,int) ;

__attribute__((used)) static void
hypothetical_check_argtypes(FunctionCallInfo fcinfo, int nargs,
       TupleDesc tupdesc)
{
 int i;


 if (!tupdesc ||
  (nargs + 1) != tupdesc->natts ||
  TupleDescAttr(tupdesc, nargs)->atttypid != INT4OID)
  elog(ERROR, "type mismatch in hypothetical-set function");


 for (i = 0; i < nargs; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

  if (get_fn_expr_argtype(fcinfo->flinfo, i + 1) != attr->atttypid)
   elog(ERROR, "type mismatch in hypothetical-set function");
 }
}
