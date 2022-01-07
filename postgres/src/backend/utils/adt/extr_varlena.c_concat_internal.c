
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int text ;
struct TYPE_12__ {scalar_t__ fn_extra; } ;
struct TYPE_11__ {TYPE_4__* flinfo; } ;
struct TYPE_10__ {int data; int len; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__* FunctionCallInfo ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int ArrayType ;


 int Assert (int) ;
 int OidIsValid (int ) ;
 char const* OutputFunctionCall (int *,int ) ;
 scalar_t__ PG_ARGISNULL (int) ;
 int * PG_GETARG_ARRAYTYPE_P (int) ;
 int PG_GETARG_DATUM (int) ;
 int PG_NARGS () ;
 int appendStringInfoString (TYPE_1__*,char const*) ;
 int * array_to_text_internal (TYPE_2__*,int *,char const*,int *) ;
 int * build_concat_foutcache (TYPE_2__*,int) ;
 int * cstring_to_text_with_len (int ,int ) ;
 int get_base_element_type (int ) ;
 int get_fn_expr_argtype (TYPE_4__*,int) ;
 scalar_t__ get_fn_expr_variadic (TYPE_4__*) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (int ) ;

__attribute__((used)) static text *
concat_internal(const char *sepstr, int argidx,
    FunctionCallInfo fcinfo)
{
 text *result;
 StringInfoData str;
 FmgrInfo *foutcache;
 bool first_arg = 1;
 int i;






 if (get_fn_expr_variadic(fcinfo->flinfo))
 {
  ArrayType *arr;


  Assert(argidx == PG_NARGS() - 1);


  if (PG_ARGISNULL(argidx))
   return ((void*)0);
  Assert(OidIsValid(get_base_element_type(get_fn_expr_argtype(fcinfo->flinfo, argidx))));


  arr = PG_GETARG_ARRAYTYPE_P(argidx);





  return array_to_text_internal(fcinfo, arr, sepstr, ((void*)0));
 }


 initStringInfo(&str);


 foutcache = (FmgrInfo *) fcinfo->flinfo->fn_extra;
 if (foutcache == ((void*)0))
  foutcache = build_concat_foutcache(fcinfo, argidx);

 for (i = argidx; i < PG_NARGS(); i++)
 {
  if (!PG_ARGISNULL(i))
  {
   Datum value = PG_GETARG_DATUM(i);


   if (first_arg)
    first_arg = 0;
   else
    appendStringInfoString(&str, sepstr);


   appendStringInfoString(&str,
           OutputFunctionCall(&foutcache[i], value));
  }
 }

 result = cstring_to_text_with_len(str.data, str.len);
 pfree(str.data);

 return result;
}
