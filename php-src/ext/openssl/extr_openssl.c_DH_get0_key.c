
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; int * pub_key; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;



__attribute__((used)) static void DH_get0_key(const DH *dh, const BIGNUM **pub_key, const BIGNUM **priv_key)
{
 *pub_key = dh->pub_key;
 *priv_key = dh->priv_key;
}
