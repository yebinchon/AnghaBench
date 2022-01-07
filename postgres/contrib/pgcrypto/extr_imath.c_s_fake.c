
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mp_usmall ;
typedef scalar_t__ mp_small ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_4__ {int sign; } ;


 int MP_NEG ;
 int s_ufake (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static void
s_fake(mp_int z, mp_small value, mp_digit vbuf[])
{
 mp_usmall uv = (mp_usmall) (value < 0) ? -value : value;

 s_ufake(z, uv, vbuf);
 if (value < 0)
  z->sign = MP_NEG;
}
