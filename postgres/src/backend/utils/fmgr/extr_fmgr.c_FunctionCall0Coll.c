
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ isnull; } ;
struct TYPE_8__ {int fn_oid; } ;
typedef int Oid ;
typedef TYPE_1__ FmgrInfo ;
typedef int Datum ;


 int ERROR ;
 int FunctionCallInvoke (TYPE_2__*) ;
 int InitFunctionCallInfoData (TYPE_2__,TYPE_1__*,int ,int ,int *,int *) ;
 int LOCAL_FCINFO (TYPE_2__*,int ) ;
 int elog (int ,char*,int ) ;
 TYPE_2__* fcinfo ;

Datum
FunctionCall0Coll(FmgrInfo *flinfo, Oid collation)
{
 LOCAL_FCINFO(fcinfo, 0);
 Datum result;

 InitFunctionCallInfoData(*fcinfo, flinfo, 0, collation, ((void*)0), ((void*)0));

 result = FunctionCallInvoke(fcinfo);


 if (fcinfo->isnull)
  elog(ERROR, "function %u returned NULL", flinfo->fn_oid);

 return result;
}
