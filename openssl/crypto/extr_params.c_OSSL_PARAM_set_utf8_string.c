
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ return_size; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OSSL_PARAM_UTF8_STRING ;
 int set_string_internal (TYPE_1__*,char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;

int OSSL_PARAM_set_utf8_string(OSSL_PARAM *p, const char *val)
{
    if (p == ((void*)0))
        return 0;

    p->return_size = 0;
    if (val == ((void*)0))
        return 0;
    return set_string_internal(p, val, strlen(val) + 1, OSSL_PARAM_UTF8_STRING);
}
