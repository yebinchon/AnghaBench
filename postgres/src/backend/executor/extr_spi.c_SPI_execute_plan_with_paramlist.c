
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; } ;
typedef TYPE_1__* SPIPlanPtr ;
typedef int ParamListInfo ;


 int InvalidSnapshot ;
 int SPI_ERROR_ARGUMENT ;
 scalar_t__ _SPI_PLAN_MAGIC ;
 int _SPI_begin_call (int) ;
 int _SPI_end_call (int) ;
 int _SPI_execute_plan (TYPE_1__*,int ,int ,int ,int,int,long) ;

int
SPI_execute_plan_with_paramlist(SPIPlanPtr plan, ParamListInfo params,
        bool read_only, long tcount)
{
 int res;

 if (plan == ((void*)0) || plan->magic != _SPI_PLAN_MAGIC || tcount < 0)
  return SPI_ERROR_ARGUMENT;

 res = _SPI_begin_call(1);
 if (res < 0)
  return res;

 res = _SPI_execute_plan(plan, params,
       InvalidSnapshot, InvalidSnapshot,
       read_only, 1, tcount);

 _SPI_end_call(1);
 return res;
}
