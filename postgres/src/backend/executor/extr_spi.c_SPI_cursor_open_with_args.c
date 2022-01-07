
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursor_options; int nargs; int * parserSetupArg; int * parserSetup; int * argtypes; int magic; } ;
typedef TYPE_1__ _SPI_plan ;
typedef int Portal ;
typedef int ParamListInfo ;
typedef int Oid ;
typedef int Datum ;


 int ERROR ;
 int SPI_cursor_open_internal (char const*,TYPE_1__*,int ,int) ;
 scalar_t__ SPI_result ;
 int _SPI_PLAN_MAGIC ;
 scalar_t__ _SPI_begin_call (int) ;
 int _SPI_convert_params (int,int *,int *,char const*) ;
 int _SPI_end_call (int) ;
 int _SPI_prepare_plan (char const*,TYPE_1__*) ;
 int elog (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;

Portal
SPI_cursor_open_with_args(const char *name,
        const char *src,
        int nargs, Oid *argtypes,
        Datum *Values, const char *Nulls,
        bool read_only, int cursorOptions)
{
 Portal result;
 _SPI_plan plan;
 ParamListInfo paramLI;

 if (src == ((void*)0) || nargs < 0)
  elog(ERROR, "SPI_cursor_open_with_args called with invalid arguments");

 if (nargs > 0 && (argtypes == ((void*)0) || Values == ((void*)0)))
  elog(ERROR, "SPI_cursor_open_with_args called with missing parameters");

 SPI_result = _SPI_begin_call(1);
 if (SPI_result < 0)
  elog(ERROR, "SPI_cursor_open_with_args called while not connected");

 memset(&plan, 0, sizeof(_SPI_plan));
 plan.magic = _SPI_PLAN_MAGIC;
 plan.cursor_options = cursorOptions;
 plan.nargs = nargs;
 plan.argtypes = argtypes;
 plan.parserSetup = ((void*)0);
 plan.parserSetupArg = ((void*)0);


 paramLI = _SPI_convert_params(nargs, argtypes,
          Values, Nulls);

 _SPI_prepare_plan(src, &plan);



 result = SPI_cursor_open_internal(name, &plan, paramLI, read_only);


 _SPI_end_call(1);

 return result;
}
