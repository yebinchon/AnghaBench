
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {int bitcount; int tag; int (* get_byte ) () ;} ;
typedef TYPE_1__ UZLIB_DATA ;


 int stub1 () ;

__attribute__((used)) static int getbit (UZLIB_DATA *d) {
  uint bit;


  if (!d->bitcount--) {

    d->tag = d->get_byte();
    d->bitcount = 7;
  }


  bit = d->tag & 0x01;
  d->tag >>= 1;

  return bit;
}
