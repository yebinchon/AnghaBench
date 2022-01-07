
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_sign ;
typedef TYPE_1__* mp_int ;
struct TYPE_3__ {int sign; } ;



__attribute__((used)) static inline mp_sign
MP_SIGN(mp_int Z)
{
 return Z->sign;
}
