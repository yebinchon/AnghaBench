
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ return_size; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OSSL_PARAM_UTF8_PTR ;
 int set_ptr_internal (TYPE_1__*,char const*,int ,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int OSSL_PARAM_set_utf8_ptr(OSSL_PARAM *p, const char *val)
{
    if (p == ((void*)0))
        return 0;
    p->return_size = 0;
    if (val == ((void*)0))
        return 0;
    return set_ptr_internal(p, val, OSSL_PARAM_UTF8_PTR, strlen(val) + 1);
}
