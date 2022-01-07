
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int (* get_byte ) () ;} ;
typedef TYPE_1__ UZLIB_DATA ;


 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static uint16_t get_uint16(UZLIB_DATA *d) {
  uint16_t v = d->get_byte();
  return v | (d->get_byte() << 8);
}
