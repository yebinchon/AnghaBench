
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ magic; } ;
typedef TYPE_1__* SPIPlanPtr ;


 scalar_t__ SPI_ERROR_ARGUMENT ;
 scalar_t__ SPI_result ;
 scalar_t__ _SPI_PLAN_MAGIC ;
 scalar_t__ _SPI_begin_call (int) ;
 scalar_t__ _SPI_end_call (int) ;
 TYPE_1__* _SPI_save_plan (TYPE_1__*) ;

SPIPlanPtr
SPI_saveplan(SPIPlanPtr plan)
{
 SPIPlanPtr newplan;

 if (plan == ((void*)0) || plan->magic != _SPI_PLAN_MAGIC)
 {
  SPI_result = SPI_ERROR_ARGUMENT;
  return ((void*)0);
 }

 SPI_result = _SPI_begin_call(0);
 if (SPI_result < 0)
  return ((void*)0);

 newplan = _SPI_save_plan(plan);

 SPI_result = _SPI_end_call(0);

 return newplan;
}
