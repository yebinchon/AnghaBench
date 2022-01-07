
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ isnull; TYPE_1__* args; } ;
struct TYPE_10__ {int fn_oid; } ;
struct TYPE_9__ {int isnull; int value; } ;
typedef int Oid ;
typedef TYPE_2__ FmgrInfo ;
typedef int Datum ;


 int ERROR ;
 int FunctionCallInvoke (TYPE_3__*) ;
 int InitFunctionCallInfoData (TYPE_3__,TYPE_2__*,int,int ,int *,int *) ;
 int LOCAL_FCINFO (TYPE_3__*,int) ;
 int elog (int ,char*,int ) ;
 TYPE_3__* fcinfo ;

Datum
FunctionCall1Coll(FmgrInfo *flinfo, Oid collation, Datum arg1)
{
 LOCAL_FCINFO(fcinfo, 1);
 Datum result;

 InitFunctionCallInfoData(*fcinfo, flinfo, 1, collation, ((void*)0), ((void*)0));

 fcinfo->args[0].value = arg1;
 fcinfo->args[0].isnull = 0;

 result = FunctionCallInvoke(fcinfo);


 if (fcinfo->isnull)
  elog(ERROR, "function %u returned NULL", flinfo->fn_oid);

 return result;
}
