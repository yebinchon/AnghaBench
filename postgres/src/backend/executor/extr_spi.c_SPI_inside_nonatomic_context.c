
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ atomic; } ;


 TYPE_1__* _SPI_current ;

bool
SPI_inside_nonatomic_context(void)
{
 if (_SPI_current == ((void*)0))
  return 0;
 if (_SPI_current->atomic)
  return 0;
 return 1;
}
