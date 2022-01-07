
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_4__ {int const* serial; int * name; int search_type; } ;
typedef TYPE_1__ OSSL_STORE_SEARCH ;
typedef int ASN1_INTEGER ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ISSUER_SERIAL ;
 int OSSL_STORE_SEARCH_BY_ISSUER_SERIAL ;
 int OSSL_STOREerr (int ,int ) ;

OSSL_STORE_SEARCH *OSSL_STORE_SEARCH_by_issuer_serial(X509_NAME *name,
                                                    const ASN1_INTEGER *serial)
{
    OSSL_STORE_SEARCH *search = OPENSSL_zalloc(sizeof(*search));

    if (search == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ISSUER_SERIAL,
                      ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    search->search_type = OSSL_STORE_SEARCH_BY_ISSUER_SERIAL;
    search->name = name;
    search->serial = serial;
    return search;
}
