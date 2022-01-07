
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ isnull; TYPE_1__* args; } ;
struct TYPE_8__ {int isnull; void* value; } ;
typedef void* (* PGFunction ) (TYPE_2__*) ;
typedef int Oid ;
typedef void* Datum ;


 int ERROR ;
 int InitFunctionCallInfoData (TYPE_2__,int *,int,int ,int *,int *) ;
 int LOCAL_FCINFO (TYPE_2__*,int) ;
 int elog (int ,char*,void*) ;
 TYPE_2__* fcinfo ;
 void* stub1 (TYPE_2__*) ;

Datum
DirectFunctionCall6Coll(PGFunction func, Oid collation, Datum arg1, Datum arg2,
      Datum arg3, Datum arg4, Datum arg5,
      Datum arg6)
{
 LOCAL_FCINFO(fcinfo, 6);
 Datum result;

 InitFunctionCallInfoData(*fcinfo, ((void*)0), 6, collation, ((void*)0), ((void*)0));

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
 fcinfo->args[5].value = arg6;
 fcinfo->args[5].isnull = 0;

 result = (*func) (fcinfo);


 if (fcinfo->isnull)
  elog(ERROR, "function %p returned NULL", (void *) func);

 return result;
}
