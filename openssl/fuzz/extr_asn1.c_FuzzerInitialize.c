
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_PCTX_FLAGS_SHOW_ABSENT ;
 int ASN1_PCTX_FLAGS_SHOW_FIELD_STRUCT_NAME ;
 int ASN1_PCTX_FLAGS_SHOW_SEQUENCE ;
 int ASN1_PCTX_FLAGS_SHOW_SSOF ;
 int ASN1_PCTX_FLAGS_SHOW_TYPE ;
 int ASN1_PCTX_new () ;
 int ASN1_PCTX_set_flags (int ,int) ;
 int ASN1_PCTX_set_str_flags (int ,int) ;
 int ASN1_STRFLGS_DUMP_ALL ;
 int ASN1_STRFLGS_SHOW_TYPE ;
 int ASN1_STRFLGS_UTF8_CONVERT ;
 int CRYPTO_free_ex_index (int ,int) ;
 int ERR_clear_error () ;
 int FuzzerSetRand () ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_init_crypto (int ,int *) ;
 int OPENSSL_init_ssl (int ,int *) ;
 int pctx ;

int FuzzerInitialize(int *argc, char ***argv)
{
    pctx = ASN1_PCTX_new();
    ASN1_PCTX_set_flags(pctx, ASN1_PCTX_FLAGS_SHOW_ABSENT |
        ASN1_PCTX_FLAGS_SHOW_SEQUENCE | ASN1_PCTX_FLAGS_SHOW_SSOF |
        ASN1_PCTX_FLAGS_SHOW_TYPE | ASN1_PCTX_FLAGS_SHOW_FIELD_STRUCT_NAME);
    ASN1_PCTX_set_str_flags(pctx, ASN1_STRFLGS_UTF8_CONVERT |
        ASN1_STRFLGS_SHOW_TYPE | ASN1_STRFLGS_DUMP_ALL);

    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, ((void*)0));
    OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS, ((void*)0));
    ERR_clear_error();
    CRYPTO_free_ex_index(0, -1);
    FuzzerSetRand();

    return 1;
}
