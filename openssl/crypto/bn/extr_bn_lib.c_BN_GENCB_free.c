
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;


 int OPENSSL_free (int *) ;

void BN_GENCB_free(BN_GENCB *cb)
{
    if (cb == ((void*)0))
        return;
    OPENSSL_free(cb);
}
