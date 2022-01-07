
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char const* string; int stringlength; int search_type; } ;
typedef TYPE_1__ OSSL_STORE_SEARCH ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ALIAS ;
 int OSSL_STORE_SEARCH_BY_ALIAS ;
 int OSSL_STOREerr (int ,int ) ;
 int strlen (char const*) ;

OSSL_STORE_SEARCH *OSSL_STORE_SEARCH_by_alias(const char *alias)
{
    OSSL_STORE_SEARCH *search = OPENSSL_zalloc(sizeof(*search));

    if (search == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ALIAS,
                      ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    search->search_type = OSSL_STORE_SEARCH_BY_ALIAS;
    search->string = (const unsigned char *)alias;
    search->stringlength = strlen(alias);
    return search;
}
