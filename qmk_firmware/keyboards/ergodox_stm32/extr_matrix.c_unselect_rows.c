
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int BSRR; } ;


 TYPE_1__* GPIOB ;

__attribute__((used)) static void unselect_rows(void) {
  GPIOB->BSRR = 0b1111111 << 8;
}
