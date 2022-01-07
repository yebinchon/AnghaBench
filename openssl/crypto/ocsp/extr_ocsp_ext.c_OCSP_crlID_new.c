
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_5__ {int * crlTime; int * crlNum; int * crlUrl; } ;
typedef TYPE_1__ OCSP_CRLID ;


 int * ASN1_GENERALIZEDTIME_new () ;
 int ASN1_GENERALIZEDTIME_set_string (int *,char*) ;
 int * ASN1_IA5STRING_new () ;
 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,long) ;
 int ASN1_STRING_set (int *,char const*,int) ;
 int NID_id_pkix_OCSP_CrlID ;
 int OCSP_CRLID_free (TYPE_1__*) ;
 TYPE_1__* OCSP_CRLID_new () ;
 int * X509V3_EXT_i2d (int ,int ,TYPE_1__*) ;

X509_EXTENSION *OCSP_crlID_new(const char *url, long *n, char *tim)
{
    X509_EXTENSION *x = ((void*)0);
    OCSP_CRLID *cid = ((void*)0);

    if ((cid = OCSP_CRLID_new()) == ((void*)0))
        goto err;
    if (url) {
        if ((cid->crlUrl = ASN1_IA5STRING_new()) == ((void*)0))
            goto err;
        if (!(ASN1_STRING_set(cid->crlUrl, url, -1)))
            goto err;
    }
    if (n) {
        if ((cid->crlNum = ASN1_INTEGER_new()) == ((void*)0))
            goto err;
        if (!(ASN1_INTEGER_set(cid->crlNum, *n)))
            goto err;
    }
    if (tim) {
        if ((cid->crlTime = ASN1_GENERALIZEDTIME_new()) == ((void*)0))
            goto err;
        if (!(ASN1_GENERALIZEDTIME_set_string(cid->crlTime, tim)))
            goto err;
    }
    x = X509V3_EXT_i2d(NID_id_pkix_OCSP_CrlID, 0, cid);
 err:
    OCSP_CRLID_free(cid);
    return x;
}
