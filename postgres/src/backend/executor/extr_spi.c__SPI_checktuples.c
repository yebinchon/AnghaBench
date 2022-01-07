
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_4__ {scalar_t__ processed; TYPE_1__* tuptable; } ;
struct TYPE_3__ {scalar_t__ numvals; } ;
typedef TYPE_1__ SPITupleTable ;


 TYPE_2__* _SPI_current ;

__attribute__((used)) static bool
_SPI_checktuples(void)
{
 uint64 processed = _SPI_current->processed;
 SPITupleTable *tuptable = _SPI_current->tuptable;
 bool failed = 0;

 if (tuptable == ((void*)0))
  failed = 1;
 else if (processed != tuptable->numvals)
  failed = 1;

 return failed;
}
