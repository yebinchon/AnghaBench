
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 size_t OSSL_NELEM (char const* const*) ;
 void* ossl_property_false ;
 scalar_t__ ossl_property_name (int *,char const* const,int) ;
 void* ossl_property_true ;
 void* ossl_property_value (int *,char*,int) ;

int ossl_property_parse_init(OPENSSL_CTX *ctx)
{
    static const char *const predefined_names[] = {
        "default",
        "legacy",
        "provider",
        "version",
        "fips",
        "engine",
    };
    size_t i;

    for (i = 0; i < OSSL_NELEM(predefined_names); i++)
        if (ossl_property_name(ctx, predefined_names[i], 1) == 0)
            goto err;


    if ((ossl_property_true = ossl_property_value(ctx, "yes", 1)) == 0
        || (ossl_property_false = ossl_property_value(ctx, "no", 1)) == 0)
        goto err;

    return 1;
err:
    return 0;
}
