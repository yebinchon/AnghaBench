
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ct_log_entry_type_t ;
typedef int SCT ;


 int CT_F_SCT_NEW_FROM_BASE64 ;
 int CT_R_SCT_UNSUPPORTED_VERSION ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 int SCT_free (int *) ;
 int * SCT_new () ;
 int SCT_set0_extensions (int *,unsigned char*,int) ;
 int SCT_set0_log_id (int *,unsigned char*,int) ;
 int SCT_set_log_entry_type (int *,int ) ;
 int SCT_set_timestamp (int *,int ) ;
 int SCT_set_version (int *,unsigned char) ;
 int X509_R_BASE64_DECODE_ERROR ;
 int ct_base64_decode (char const*,unsigned char**) ;
 scalar_t__ o2i_SCT_signature (int *,unsigned char const**,int) ;

SCT *SCT_new_from_base64(unsigned char version, const char *logid_base64,
                         ct_log_entry_type_t entry_type, uint64_t timestamp,
                         const char *extensions_base64,
                         const char *signature_base64)
{
    SCT *sct = SCT_new();
    unsigned char *dec = ((void*)0);
    const unsigned char* p = ((void*)0);
    int declen;

    if (sct == ((void*)0)) {
        CTerr(CT_F_SCT_NEW_FROM_BASE64, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }





    if (!SCT_set_version(sct, version)) {
        CTerr(CT_F_SCT_NEW_FROM_BASE64, CT_R_SCT_UNSUPPORTED_VERSION);
        goto err;
    }

    declen = ct_base64_decode(logid_base64, &dec);
    if (declen < 0) {
        CTerr(CT_F_SCT_NEW_FROM_BASE64, X509_R_BASE64_DECODE_ERROR);
        goto err;
    }
    if (!SCT_set0_log_id(sct, dec, declen))
        goto err;
    dec = ((void*)0);

    declen = ct_base64_decode(extensions_base64, &dec);
    if (declen < 0) {
        CTerr(CT_F_SCT_NEW_FROM_BASE64, X509_R_BASE64_DECODE_ERROR);
        goto err;
    }
    SCT_set0_extensions(sct, dec, declen);
    dec = ((void*)0);

    declen = ct_base64_decode(signature_base64, &dec);
    if (declen < 0) {
        CTerr(CT_F_SCT_NEW_FROM_BASE64, X509_R_BASE64_DECODE_ERROR);
        goto err;
    }

    p = dec;
    if (o2i_SCT_signature(sct, &p, declen) <= 0)
        goto err;
    OPENSSL_free(dec);
    dec = ((void*)0);

    SCT_set_timestamp(sct, timestamp);

    if (!SCT_set_log_entry_type(sct, entry_type))
        goto err;

    return sct;

 err:
    OPENSSL_free(dec);
    SCT_free(sct);
    return ((void*)0);
}
