
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_4__ {int pkey_flags; scalar_t__ (* param_decode ) (int *,unsigned char const**,size_t) ;int pkey_id; } ;
typedef int OSSL_STORE_INFO ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef int EVP_PKEY ;


 int ASN1_PKEY_ALIAS ;
 int ERR_R_EVP_LIB ;
 TYPE_1__* EVP_PKEY_asn1_get0 (int) ;
 int EVP_PKEY_asn1_get_count () ;
 int EVP_PKEY_free (int *) ;
 TYPE_1__* EVP_PKEY_get0_asn1 (int *) ;
 int * EVP_PKEY_new () ;
 scalar_t__ EVP_PKEY_set_type (int *,int ) ;
 scalar_t__ EVP_PKEY_set_type_str (int *,char const*,int) ;
 int OSSL_STORE_F_TRY_DECODE_PARAMS ;
 int * OSSL_STORE_INFO_new_PARAMS (int *) ;
 int OSSL_STOREerr (int ,int ) ;
 int pem_check_suffix (char const*,char*) ;
 scalar_t__ stub1 (int *,unsigned char const**,size_t) ;
 scalar_t__ stub2 (int *,unsigned char const**,size_t) ;

__attribute__((used)) static OSSL_STORE_INFO *try_decode_params(const char *pem_name,
                                          const char *pem_header,
                                          const unsigned char *blob,
                                          size_t len, void **pctx,
                                          int *matchcount,
                                          const UI_METHOD *ui_method,
                                          void *ui_data)
{
    OSSL_STORE_INFO *store_info = ((void*)0);
    int slen = 0;
    EVP_PKEY *pkey = ((void*)0);
    const EVP_PKEY_ASN1_METHOD *ameth = ((void*)0);
    int ok = 0;

    if (pem_name != ((void*)0)) {
        if ((slen = pem_check_suffix(pem_name, "PARAMETERS")) == 0)
            return ((void*)0);
        *matchcount = 1;
    }

    if (slen > 0) {
        if ((pkey = EVP_PKEY_new()) == ((void*)0)) {
            OSSL_STOREerr(OSSL_STORE_F_TRY_DECODE_PARAMS, ERR_R_EVP_LIB);
            return ((void*)0);
        }


        if (EVP_PKEY_set_type_str(pkey, pem_name, slen)
            && (ameth = EVP_PKEY_get0_asn1(pkey)) != ((void*)0)
            && ameth->param_decode != ((void*)0)
            && ameth->param_decode(pkey, &blob, len))
            ok = 1;
    } else {
        int i;
        EVP_PKEY *tmp_pkey = ((void*)0);

        for (i = 0; i < EVP_PKEY_asn1_get_count(); i++) {
            const unsigned char *tmp_blob = blob;

            if (tmp_pkey == ((void*)0) && (tmp_pkey = EVP_PKEY_new()) == ((void*)0)) {
                OSSL_STOREerr(OSSL_STORE_F_TRY_DECODE_PARAMS, ERR_R_EVP_LIB);
                break;
            }

            ameth = EVP_PKEY_asn1_get0(i);
            if (ameth->pkey_flags & ASN1_PKEY_ALIAS)
                continue;

            if (EVP_PKEY_set_type(tmp_pkey, ameth->pkey_id)
                && (ameth = EVP_PKEY_get0_asn1(tmp_pkey)) != ((void*)0)
                && ameth->param_decode != ((void*)0)
                && ameth->param_decode(tmp_pkey, &tmp_blob, len)) {
                if (pkey != ((void*)0))
                    EVP_PKEY_free(tmp_pkey);
                else
                    pkey = tmp_pkey;
                tmp_pkey = ((void*)0);
                (*matchcount)++;
            }
        }

        EVP_PKEY_free(tmp_pkey);
        if (*matchcount == 1) {
            ok = 1;
        }
    }

    if (ok)
        store_info = OSSL_STORE_INFO_new_PARAMS(pkey);
    if (store_info == ((void*)0))
        EVP_PKEY_free(pkey);

    return store_info;
}
