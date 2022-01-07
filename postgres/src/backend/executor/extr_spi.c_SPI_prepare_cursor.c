
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursor_options; int nargs; int * parserSetupArg; int * parserSetup; int * argtypes; int magic; } ;
typedef TYPE_1__ _SPI_plan ;
typedef int * SPIPlanPtr ;
typedef int Oid ;


 scalar_t__ SPI_ERROR_ARGUMENT ;
 scalar_t__ SPI_result ;
 int _SPI_PLAN_MAGIC ;
 scalar_t__ _SPI_begin_call (int) ;
 int _SPI_end_call (int) ;
 int * _SPI_make_plan_non_temp (TYPE_1__*) ;
 int _SPI_prepare_plan (char const*,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

SPIPlanPtr
SPI_prepare_cursor(const char *src, int nargs, Oid *argtypes,
       int cursorOptions)
{
 _SPI_plan plan;
 SPIPlanPtr result;

 if (src == ((void*)0) || nargs < 0 || (nargs > 0 && argtypes == ((void*)0)))
 {
  SPI_result = SPI_ERROR_ARGUMENT;
  return ((void*)0);
 }

 SPI_result = _SPI_begin_call(1);
 if (SPI_result < 0)
  return ((void*)0);

 memset(&plan, 0, sizeof(_SPI_plan));
 plan.magic = _SPI_PLAN_MAGIC;
 plan.cursor_options = cursorOptions;
 plan.nargs = nargs;
 plan.argtypes = argtypes;
 plan.parserSetup = ((void*)0);
 plan.parserSetupArg = ((void*)0);

 _SPI_prepare_plan(src, &plan);


 result = _SPI_make_plan_non_temp(&plan);

 _SPI_end_call(1);

 return result;
}
