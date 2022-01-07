
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ isnull; TYPE_1__* args; } ;
struct TYPE_10__ {int fn_oid; } ;
struct TYPE_9__ {int isnull; void* value; } ;
typedef int Oid ;
typedef TYPE_2__ FmgrInfo ;
typedef void* Datum ;


 int ERROR ;
 void* FunctionCallInvoke (TYPE_3__*) ;
 int InitFunctionCallInfoData (TYPE_3__,TYPE_2__*,int,int ,int *,int *) ;
 int LOCAL_FCINFO (TYPE_3__*,int) ;
 int elog (int ,char*,int ) ;
 TYPE_3__* fcinfo ;

Datum
FunctionCall5Coll(FmgrInfo *flinfo, Oid collation, Datum arg1, Datum arg2,
      Datum arg3, Datum arg4, Datum arg5)
{
 LOCAL_FCINFO(fcinfo, 5);
 Datum result;

 InitFunctionCallInfoData(*fcinfo, flinfo, 5, collation, ((void*)0), ((void*)0));

 fcinfo->args[0].value = arg1;
 fcinfo->args[0].isnull = 0;
 fcinfo->args[1].value = arg2;
 fcinfo->args[1].isnull = 0;
 fcinfo->args[2].value = arg3;
 fcinfo->args[2].isnull = 0;
 fcinfo->args[3].value = arg4;
 fcinfo->args[3].isnull = 0;
 fcinfo->args[4].value = arg5;
 fcinfo->args[4].isnull = 0;

 result = FunctionCallInvoke(fcinfo);


 if (fcinfo->isnull)
  elog(ERROR, "function %u returned NULL", flinfo->fn_oid);

 return result;
}
