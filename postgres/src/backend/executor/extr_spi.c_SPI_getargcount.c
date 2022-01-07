
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; int nargs; } ;
typedef TYPE_1__* SPIPlanPtr ;


 int SPI_ERROR_ARGUMENT ;
 int SPI_result ;
 scalar_t__ _SPI_PLAN_MAGIC ;

int
SPI_getargcount(SPIPlanPtr plan)
{
 if (plan == ((void*)0) || plan->magic != _SPI_PLAN_MAGIC)
 {
  SPI_result = SPI_ERROR_ARGUMENT;
  return -1;
 }
 return plan->nargs;
}
