
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int UI_METHOD ;
typedef int OSSL_STORE_INFO ;


 int * OSSL_STORE_INFO_new_CERT (int *) ;
 int PEM_STRING_X509 ;
 int PEM_STRING_X509_OLD ;
 int PEM_STRING_X509_TRUSTED ;
 int X509_free (int *) ;
 int * d2i_X509 (int *,unsigned char const**,size_t) ;
 int * d2i_X509_AUX (int *,unsigned char const**,size_t) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static OSSL_STORE_INFO *try_decode_X509Certificate(const char *pem_name,
                                                   const char *pem_header,
                                                   const unsigned char *blob,
                                                   size_t len, void **pctx,
                                                   int *matchcount,
                                                   const UI_METHOD *ui_method,
                                                   void *ui_data)
{
    OSSL_STORE_INFO *store_info = ((void*)0);
    X509 *cert = ((void*)0);
    int ignore_trusted = 1;

    if (pem_name != ((void*)0)) {
        if (strcmp(pem_name, PEM_STRING_X509_TRUSTED) == 0)
            ignore_trusted = 0;
        else if (strcmp(pem_name, PEM_STRING_X509_OLD) != 0
                 && strcmp(pem_name, PEM_STRING_X509) != 0)

            return ((void*)0);
        *matchcount = 1;
    }

    if ((cert = d2i_X509_AUX(((void*)0), &blob, len)) != ((void*)0)
        || (ignore_trusted && (cert = d2i_X509(((void*)0), &blob, len)) != ((void*)0))) {
        *matchcount = 1;
        store_info = OSSL_STORE_INFO_new_CERT(cert);
    }

    if (store_info == ((void*)0))
        X509_free(cert);

    return store_info;
}
