
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_usmall ;
typedef int mp_size ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_3__ {int * digits; int sign; int alloc; int used; } ;


 int MP_VALUE_DIGITS (int ) ;
 int MP_ZPOS ;
 int s_uvpack (int ,int *) ;

__attribute__((used)) static void
s_ufake(mp_int z, mp_usmall value, mp_digit vbuf[])
{
 mp_size ndig = (mp_size) s_uvpack(value, vbuf);

 z->used = ndig;
 z->alloc = MP_VALUE_DIGITS(value);
 z->sign = MP_ZPOS;
 z->digits = vbuf;
}
