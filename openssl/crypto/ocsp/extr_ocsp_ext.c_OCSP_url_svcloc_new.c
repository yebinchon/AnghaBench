
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int X509_NAME ;
typedef int X509_EXTENSION ;
struct TYPE_14__ {TYPE_2__* location; int * method; } ;
struct TYPE_13__ {int * locator; int * issuer; } ;
struct TYPE_11__ {int * ia5; } ;
struct TYPE_12__ {TYPE_1__ d; int type; } ;
typedef TYPE_3__ OCSP_SERVICELOC ;
typedef int ASN1_STRING ;
typedef int ASN1_IA5STRING ;
typedef TYPE_4__ ACCESS_DESCRIPTION ;


 int ACCESS_DESCRIPTION_free (TYPE_4__*) ;
 TYPE_4__* ACCESS_DESCRIPTION_new () ;
 int ASN1_IA5STRING_free (int *) ;
 int * ASN1_IA5STRING_new () ;
 int ASN1_STRING_set (int *,char const*,int) ;
 int GEN_URI ;
 int NID_ad_OCSP ;
 int NID_id_pkix_OCSP_serviceLocator ;
 int * OBJ_nid2obj (int ) ;
 int OCSP_SERVICELOC_free (TYPE_3__*) ;
 TYPE_3__* OCSP_SERVICELOC_new () ;
 int * X509V3_EXT_i2d (int ,int ,TYPE_3__*) ;
 int * X509_NAME_dup (int *) ;
 int X509_NAME_free (int *) ;
 int * sk_ACCESS_DESCRIPTION_new_null () ;
 int sk_ACCESS_DESCRIPTION_push (int *,TYPE_4__*) ;

X509_EXTENSION *OCSP_url_svcloc_new(X509_NAME *issuer, const char **urls)
{
    X509_EXTENSION *x = ((void*)0);
    ASN1_IA5STRING *ia5 = ((void*)0);
    OCSP_SERVICELOC *sloc = ((void*)0);
    ACCESS_DESCRIPTION *ad = ((void*)0);

    if ((sloc = OCSP_SERVICELOC_new()) == ((void*)0))
        goto err;
    X509_NAME_free(sloc->issuer);
    if ((sloc->issuer = X509_NAME_dup(issuer)) == ((void*)0))
        goto err;
    if (urls && *urls
        && (sloc->locator = sk_ACCESS_DESCRIPTION_new_null()) == ((void*)0))
        goto err;
    while (urls && *urls) {
        if ((ad = ACCESS_DESCRIPTION_new()) == ((void*)0))
            goto err;
        if ((ad->method = OBJ_nid2obj(NID_ad_OCSP)) == ((void*)0))
            goto err;
        if ((ia5 = ASN1_IA5STRING_new()) == ((void*)0))
            goto err;
        if (!ASN1_STRING_set((ASN1_STRING *)ia5, *urls, -1))
            goto err;

        ad->location->type = GEN_URI;
        ad->location->d.ia5 = ia5;
        ia5 = ((void*)0);
        if (!sk_ACCESS_DESCRIPTION_push(sloc->locator, ad))
            goto err;
        ad = ((void*)0);
        urls++;
    }
    x = X509V3_EXT_i2d(NID_id_pkix_OCSP_serviceLocator, 0, sloc);
 err:
    ASN1_IA5STRING_free(ia5);
    ACCESS_DESCRIPTION_free(ad);
    OCSP_SERVICELOC_free(sloc);
    return x;
}
