
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ return_size; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OSSL_PARAM_OCTET_STRING ;
 int set_string_internal (TYPE_1__*,void const*,size_t,int ) ;

int OSSL_PARAM_set_octet_string(OSSL_PARAM *p, const void *val,
                                size_t len)
{
    if (p == ((void*)0))
        return 0;

    p->return_size = 0;
    if (val == ((void*)0))
        return 0;
    return set_string_internal(p, val, len, OSSL_PARAM_OCTET_STRING);
}
