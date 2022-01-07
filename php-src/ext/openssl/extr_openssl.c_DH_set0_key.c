
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; int * pub_key; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;



__attribute__((used)) static int DH_set0_key(DH *dh, BIGNUM *pub_key, BIGNUM *priv_key)
{
 dh->pub_key = pub_key;
 dh->priv_key = priv_key;

 return 1;
}
