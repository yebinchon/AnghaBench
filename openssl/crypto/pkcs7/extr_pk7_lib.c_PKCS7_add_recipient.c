
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int PKCS7_RECIP_INFO ;
typedef int PKCS7 ;


 int PKCS7_RECIP_INFO_free (int *) ;
 int * PKCS7_RECIP_INFO_new () ;
 int PKCS7_RECIP_INFO_set (int *,int *) ;
 int PKCS7_add_recipient_info (int *,int *) ;

PKCS7_RECIP_INFO *PKCS7_add_recipient(PKCS7 *p7, X509 *x509)
{
    PKCS7_RECIP_INFO *ri;

    if ((ri = PKCS7_RECIP_INFO_new()) == ((void*)0))
        goto err;
    if (!PKCS7_RECIP_INFO_set(ri, x509))
        goto err;
    if (!PKCS7_add_recipient_info(p7, ri))
        goto err;
    return ri;
 err:
    PKCS7_RECIP_INFO_free(ri);
    return ((void*)0);
}
