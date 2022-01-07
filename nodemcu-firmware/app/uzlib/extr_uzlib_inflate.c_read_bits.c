
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {int bitcount; int tag; scalar_t__ (* get_byte ) () ;} ;
typedef TYPE_1__ UZLIB_DATA ;


 scalar_t__ stub1 () ;

__attribute__((used)) static uint read_bits (UZLIB_DATA *d, int num, int base) {

  if (!num)
    return base;

  uint i, n = (((uint)-1)<<num);
  for (i = d->bitcount; i < num; i +=8)
    d->tag |= ((uint)d->get_byte()) << i;

  n = d->tag & ~n;
  d->tag >>= num;
  d->bitcount = i - num;
  return base + n;
}
