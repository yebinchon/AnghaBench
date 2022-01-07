
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int Y; int X; int Z; } ;
typedef TYPE_1__ ge_p2 ;
typedef int fe ;


 int fe_invert (int ,int ) ;
 int fe_isnegative (int ) ;
 int fe_mul (int ,int ,int ) ;
 int fe_tobytes (int*,int ) ;

__attribute__((used)) static void ge_tobytes(uint8_t *s, const ge_p2 *h)
{
    fe recip;
    fe x;
    fe y;

    fe_invert(recip, h->Z);
    fe_mul(x, h->X, recip);
    fe_mul(y, h->Y, recip);
    fe_tobytes(s, y);
    s[31] ^= fe_isnegative(x) << 7;
}
