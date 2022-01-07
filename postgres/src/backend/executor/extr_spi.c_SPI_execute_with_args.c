
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nargs; int * parserSetupArg; int * parserSetup; int * argtypes; int cursor_options; int magic; } ;
typedef TYPE_1__ _SPI_plan ;
typedef int ParamListInfo ;
typedef int Oid ;
typedef int Datum ;


 int CURSOR_OPT_PARALLEL_OK ;
 int InvalidSnapshot ;
 int SPI_ERROR_ARGUMENT ;
 int SPI_ERROR_PARAM ;
 int _SPI_PLAN_MAGIC ;
 int _SPI_begin_call (int) ;
 int _SPI_convert_params (int,int *,int *,char const*) ;
 int _SPI_end_call (int) ;
 int _SPI_execute_plan (TYPE_1__*,int ,int ,int ,int,int,long) ;
 int _SPI_prepare_oneshot_plan (char const*,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int
SPI_execute_with_args(const char *src,
       int nargs, Oid *argtypes,
       Datum *Values, const char *Nulls,
       bool read_only, long tcount)
{
 int res;
 _SPI_plan plan;
 ParamListInfo paramLI;

 if (src == ((void*)0) || nargs < 0 || tcount < 0)
  return SPI_ERROR_ARGUMENT;

 if (nargs > 0 && (argtypes == ((void*)0) || Values == ((void*)0)))
  return SPI_ERROR_PARAM;

 res = _SPI_begin_call(1);
 if (res < 0)
  return res;

 memset(&plan, 0, sizeof(_SPI_plan));
 plan.magic = _SPI_PLAN_MAGIC;
 plan.cursor_options = CURSOR_OPT_PARALLEL_OK;
 plan.nargs = nargs;
 plan.argtypes = argtypes;
 plan.parserSetup = ((void*)0);
 plan.parserSetupArg = ((void*)0);

 paramLI = _SPI_convert_params(nargs, argtypes,
          Values, Nulls);

 _SPI_prepare_oneshot_plan(src, &plan);

 res = _SPI_execute_plan(&plan, paramLI,
       InvalidSnapshot, InvalidSnapshot,
       read_only, 1, tcount);

 _SPI_end_call(1);
 return res;
}
