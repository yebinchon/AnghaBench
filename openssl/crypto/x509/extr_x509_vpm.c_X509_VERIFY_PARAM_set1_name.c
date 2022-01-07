
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int OPENSSL_free (scalar_t__) ;
 scalar_t__ OPENSSL_strdup (char const*) ;

int X509_VERIFY_PARAM_set1_name(X509_VERIFY_PARAM *param, const char *name)
{
    OPENSSL_free(param->name);
    param->name = OPENSSL_strdup(name);
    if (param->name)
        return 1;
    return 0;
}
