
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; int * pub_key; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;



int DSA_set0_key(DSA *d, BIGNUM *pub_key, BIGNUM *priv_key)
{
 d->pub_key = pub_key;
 d->priv_key = priv_key;

 return 1;
}
