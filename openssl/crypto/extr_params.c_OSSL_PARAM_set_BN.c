
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t return_size; scalar_t__ data_type; size_t data_size; int * data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int BIGNUM ;


 scalar_t__ BN_bn2nativepad (int const*,int *,size_t) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_num_bytes (int const*) ;
 scalar_t__ OSSL_PARAM_UNSIGNED_INTEGER ;

int OSSL_PARAM_set_BN(OSSL_PARAM *p, const BIGNUM *val)
{
    size_t bytes;

    if (p == ((void*)0))
        return 0;
    p->return_size = 0;
    if (val == ((void*)0) || p->data_type != OSSL_PARAM_UNSIGNED_INTEGER)
        return 0;


    if (BN_is_negative(val))
        return 0;

    bytes = (size_t)BN_num_bytes(val);
    p->return_size = bytes;
    if (p->data == ((void*)0))
        return 1;
    if (p->data_size >= bytes) {
        p->return_size = p->data_size;
        return BN_bn2nativepad(val, p->data, p->data_size) >= 0;
    }
    return 0;
}
