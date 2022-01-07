
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* fn_extra; int fn_mcxt; } ;
struct TYPE_9__ {int element_type; } ;
struct TYPE_8__ {TYPE_3__* flinfo; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_1__* FunctionCallInfo ;
typedef int ExpandedArrayHeader ;
typedef TYPE_2__ ArrayMetaState ;


 int AggCheckCallContext (TYPE_1__*,int *) ;
 int CurrentMemoryContext ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int InvalidOid ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int OidIsValid (int ) ;
 int PG_ARGISNULL (int) ;
 int * PG_GETARG_EXPANDED_ARRAYX (int,TYPE_2__*) ;
 int * construct_empty_expanded_array (int ,int ,TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_element_type (int ) ;
 int get_fn_expr_argtype (TYPE_3__*,int) ;

__attribute__((used)) static ExpandedArrayHeader *
fetch_array_arg_replace_nulls(FunctionCallInfo fcinfo, int argno)
{
 ExpandedArrayHeader *eah;
 Oid element_type;
 ArrayMetaState *my_extra;
 MemoryContext resultcxt;


 my_extra = (ArrayMetaState *) fcinfo->flinfo->fn_extra;
 if (my_extra == ((void*)0))
 {
  my_extra = (ArrayMetaState *)
   MemoryContextAlloc(fcinfo->flinfo->fn_mcxt,
          sizeof(ArrayMetaState));
  my_extra->element_type = InvalidOid;
  fcinfo->flinfo->fn_extra = my_extra;
 }


 if (!AggCheckCallContext(fcinfo, &resultcxt))
  resultcxt = CurrentMemoryContext;


 if (!PG_ARGISNULL(argno))
 {
  MemoryContext oldcxt = MemoryContextSwitchTo(resultcxt);

  eah = PG_GETARG_EXPANDED_ARRAYX(argno, my_extra);
  MemoryContextSwitchTo(oldcxt);
 }
 else
 {

  Oid arr_typeid = get_fn_expr_argtype(fcinfo->flinfo, argno);

  if (!OidIsValid(arr_typeid))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("could not determine input data type")));
  element_type = get_element_type(arr_typeid);
  if (!OidIsValid(element_type))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("input data type is not an array")));

  eah = construct_empty_expanded_array(element_type,
            resultcxt,
            my_extra);
 }

 return eah;
}
