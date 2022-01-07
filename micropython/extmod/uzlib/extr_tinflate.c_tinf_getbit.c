
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bitcount; int tag; } ;
typedef TYPE_1__ TINF_DATA ;


 int uzlib_get_byte (TYPE_1__*) ;

__attribute__((used)) static int tinf_getbit(TINF_DATA *d)
{
   unsigned int bit;


   if (!d->bitcount--)
   {

      d->tag = uzlib_get_byte(d);
      d->bitcount = 7;
   }


   bit = d->tag & 0x01;
   d->tag >>= 1;

   return bit;
}
