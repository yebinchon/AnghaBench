
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; scalar_t__ nargs; int argtypes; } ;
typedef TYPE_1__* SPIPlanPtr ;
typedef int Datum ;


 int InvalidSnapshot ;
 int SPI_ERROR_ARGUMENT ;
 int SPI_ERROR_PARAM ;
 scalar_t__ _SPI_PLAN_MAGIC ;
 int _SPI_begin_call (int) ;
 int _SPI_convert_params (scalar_t__,int ,int *,char const*) ;
 int _SPI_end_call (int) ;
 int _SPI_execute_plan (TYPE_1__*,int ,int ,int ,int,int,long) ;

int
SPI_execute_plan(SPIPlanPtr plan, Datum *Values, const char *Nulls,
     bool read_only, long tcount)
{
 int res;

 if (plan == ((void*)0) || plan->magic != _SPI_PLAN_MAGIC || tcount < 0)
  return SPI_ERROR_ARGUMENT;

 if (plan->nargs > 0 && Values == ((void*)0))
  return SPI_ERROR_PARAM;

 res = _SPI_begin_call(1);
 if (res < 0)
  return res;

 res = _SPI_execute_plan(plan,
       _SPI_convert_params(plan->nargs, plan->argtypes,
            Values, Nulls),
       InvalidSnapshot, InvalidSnapshot,
       read_only, 1, tcount);

 _SPI_end_call(1);
 return res;
}
