
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; int nargs; int * argtypes; } ;
typedef TYPE_1__* SPIPlanPtr ;
typedef int Oid ;


 int InvalidOid ;
 int SPI_ERROR_ARGUMENT ;
 int SPI_result ;
 scalar_t__ _SPI_PLAN_MAGIC ;

Oid
SPI_getargtypeid(SPIPlanPtr plan, int argIndex)
{
 if (plan == ((void*)0) || plan->magic != _SPI_PLAN_MAGIC ||
  argIndex < 0 || argIndex >= plan->nargs)
 {
  SPI_result = SPI_ERROR_ARGUMENT;
  return InvalidOid;
 }
 return plan->argtypes[argIndex];
}
