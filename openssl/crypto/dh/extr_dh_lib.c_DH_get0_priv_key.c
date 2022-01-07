
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* priv_key; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;



const BIGNUM *DH_get0_priv_key(const DH *dh)
{
    return dh->priv_key;
}
