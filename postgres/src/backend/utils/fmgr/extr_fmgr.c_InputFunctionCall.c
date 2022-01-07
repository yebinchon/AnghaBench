
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_11__ {scalar_t__ isnull; TYPE_1__* args; } ;
struct TYPE_10__ {int fn_oid; scalar_t__ fn_strict; } ;
struct TYPE_9__ {int isnull; int value; } ;
typedef int Oid ;
typedef TYPE_2__ FmgrInfo ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int ERROR ;
 int FunctionCallInvoke (TYPE_3__*) ;
 int InitFunctionCallInfoData (TYPE_3__,TYPE_2__*,int,int ,int *,int *) ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int LOCAL_FCINFO (TYPE_3__*,int) ;
 int ObjectIdGetDatum (int ) ;
 int elog (int ,char*,int ) ;
 TYPE_3__* fcinfo ;

Datum
InputFunctionCall(FmgrInfo *flinfo, char *str, Oid typioparam, int32 typmod)
{
 LOCAL_FCINFO(fcinfo, 3);
 Datum result;

 if (str == ((void*)0) && flinfo->fn_strict)
  return (Datum) 0;

 InitFunctionCallInfoData(*fcinfo, flinfo, 3, InvalidOid, ((void*)0), ((void*)0));

 fcinfo->args[0].value = CStringGetDatum(str);
 fcinfo->args[0].isnull = 0;
 fcinfo->args[1].value = ObjectIdGetDatum(typioparam);
 fcinfo->args[1].isnull = 0;
 fcinfo->args[2].value = Int32GetDatum(typmod);
 fcinfo->args[2].isnull = 0;

 result = FunctionCallInvoke(fcinfo);


 if (str == ((void*)0))
 {
  if (!fcinfo->isnull)
   elog(ERROR, "input function %u returned non-NULL",
     flinfo->fn_oid);
 }
 else
 {
  if (fcinfo->isnull)
   elog(ERROR, "input function %u returned NULL",
     flinfo->fn_oid);
 }

 return result;
}
