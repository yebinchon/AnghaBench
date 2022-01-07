
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prop_name_idx; int prop_names; } ;
typedef TYPE_1__ PROPERTY_STRING_DATA ;
typedef int OSSL_PROPERTY_IDX ;
typedef int OPENSSL_CTX ;


 int OPENSSL_CTX_PROPERTY_STRING_INDEX ;
 TYPE_1__* openssl_ctx_get_data (int *,int ,int *) ;
 int ossl_property_string (int ,int *,char const*) ;
 int property_string_data_method ;

OSSL_PROPERTY_IDX ossl_property_name(OPENSSL_CTX *ctx, const char *s,
                                     int create)
{
    PROPERTY_STRING_DATA *propdata
        = openssl_ctx_get_data(ctx, OPENSSL_CTX_PROPERTY_STRING_INDEX,
                               &property_string_data_method);

    if (propdata == ((void*)0))
        return 0;
    return ossl_property_string(propdata->prop_names,
                                create ? &propdata->prop_name_idx : ((void*)0),
                                s);
}
