
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* get_byte ) () ;} ;
typedef TYPE_1__ UZLIB_DATA ;


 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;

__attribute__((used)) static void skip_bytes(UZLIB_DATA *d, int num) {
  if (num)
    while (num--) (void) d->get_byte();
  else
    while (d->get_byte()) {}
}
