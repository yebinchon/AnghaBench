
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int dirty_cnt; int length; int * g; int * p; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;


 TYPE_1__* DH_new () ;
 int _bignum_const_2 ;

__attribute__((used)) static DH *dh_param_init(const BIGNUM *p, int32_t nbits)
{
    DH *dh = DH_new();
    if (dh == ((void*)0))
        return ((void*)0);
    dh->p = (BIGNUM *)p;
    dh->g = (BIGNUM *)&_bignum_const_2;
    dh->length = nbits;
    dh->dirty_cnt++;
    return dh;
}
