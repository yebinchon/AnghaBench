
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ return_size; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OSSL_PARAM_OCTET_PTR ;
 int set_ptr_internal (TYPE_1__*,void const*,int ,size_t) ;

int OSSL_PARAM_set_octet_ptr(OSSL_PARAM *p, const void *val,
                             size_t used_len)
{
    if (p == ((void*)0))
        return 0;
    p->return_size = 0;
    if (val == ((void*)0))
        return 0;
    return set_ptr_internal(p, val, OSSL_PARAM_OCTET_PTR, used_len);
}
