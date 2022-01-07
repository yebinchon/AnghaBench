
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data_type; scalar_t__ data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int BIGNUM ;


 int * BN_native2bn (int ,int,int *) ;
 scalar_t__ OSSL_PARAM_UNSIGNED_INTEGER ;

int OSSL_PARAM_get_BN(const OSSL_PARAM *p, BIGNUM **val)
{
    BIGNUM *b;

    if (val == ((void*)0)
        || p == ((void*)0)
        || p->data_type != OSSL_PARAM_UNSIGNED_INTEGER)
        return 0;

    b = BN_native2bn(p->data, (int)p->data_size, *val);
    if (b != ((void*)0)) {
        *val = b;
        return 1;
    }
    return 0;
}
