
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int BIO_printf (int ,char*,...) ;
 int EC_GROUP_get_curve_name (int const*) ;
 int * EC_KEY_get0_group (int *) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int * EVP_PKEY_CTX_new_id (int,int *) ;
 scalar_t__ EVP_PKEY_EC ;






 int EVP_PKEY_SM2 ;
 int EVP_PKEY_decrypt_init (int *) ;
 int EVP_PKEY_derive_init (int *) ;
 int EVP_PKEY_encrypt_init (int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int EVP_PKEY_set_alias_type (int *,int ) ;
 int EVP_PKEY_sign_init (int *) ;
 int EVP_PKEY_size (int *) ;
 int EVP_PKEY_verify_init (int *) ;
 int EVP_PKEY_verify_recover_init (int *) ;




 int NID_sm2 ;
 int NID_undef ;
 int OBJ_ln2nid (char const*) ;
 int OBJ_sn2nid (char const*) ;
 int OPENSSL_free (char*) ;
 int X509_free (int *) ;
 int * X509_get_pubkey (int *) ;
 int app_passwd (char*,int *,char**,int *) ;
 int bio_err ;
 int * load_cert (char const*,int,char*) ;
 int * load_key (char const*,int,int ,char*,int *,char*) ;
 int * load_pubkey (char const*,int,int ,int *,int *,char*) ;

__attribute__((used)) static EVP_PKEY_CTX *init_ctx(const char *kdfalg, int *pkeysize,
                              const char *keyfile, int keyform, int key_type,
                              char *passinarg, int pkey_op, ENGINE *e,
                              const int engine_impl, int rawin,
                              EVP_PKEY **ppkey)
{
    EVP_PKEY *pkey = ((void*)0);
    EVP_PKEY_CTX *ctx = ((void*)0);
    ENGINE *impl = ((void*)0);
    char *passin = ((void*)0);
    int rv = -1;
    X509 *x;
    if (((pkey_op == 134) || (pkey_op == 137)
         || (pkey_op == 136))
        && (key_type != 129 && kdfalg == ((void*)0))) {
        BIO_printf(bio_err, "A private key is needed for this operation\n");
        goto end;
    }
    if (!app_passwd(passinarg, ((void*)0), &passin, ((void*)0))) {
        BIO_printf(bio_err, "Error getting password\n");
        goto end;
    }
    switch (key_type) {
    case 129:
        pkey = load_key(keyfile, keyform, 0, passin, e, "Private Key");
        break;

    case 128:
        pkey = load_pubkey(keyfile, keyform, 0, ((void*)0), e, "Public Key");
        break;

    case 131:
        x = load_cert(keyfile, keyform, "Certificate");
        if (x) {
            pkey = X509_get_pubkey(x);
            X509_free(x);
        }
        break;

    case 130:
        break;

    }


    if (engine_impl)
        impl = e;


    if (kdfalg != ((void*)0)) {
        int kdfnid = OBJ_sn2nid(kdfalg);

        if (kdfnid == NID_undef) {
            kdfnid = OBJ_ln2nid(kdfalg);
            if (kdfnid == NID_undef) {
                BIO_printf(bio_err, "The given KDF \"%s\" is unknown.\n",
                           kdfalg);
                goto end;
            }
        }
        ctx = EVP_PKEY_CTX_new_id(kdfnid, impl);
    } else {
        if (pkey == ((void*)0))
            goto end;



        if (EVP_PKEY_id(pkey) == EVP_PKEY_EC) {
            EC_KEY *eckey = ((void*)0);
            const EC_GROUP *group = ((void*)0);
            int nid;

            if ((eckey = EVP_PKEY_get0_EC_KEY(pkey)) == ((void*)0)
                    || (group = EC_KEY_get0_group(eckey)) == ((void*)0)
                    || (nid = EC_GROUP_get_curve_name(group)) == 0)
                goto end;
            if (nid == NID_sm2)
                EVP_PKEY_set_alias_type(pkey, EVP_PKEY_SM2);
        }

        *pkeysize = EVP_PKEY_size(pkey);
        ctx = EVP_PKEY_CTX_new(pkey, impl);
        if (ppkey != ((void*)0))
            *ppkey = pkey;
        EVP_PKEY_free(pkey);
    }

    if (ctx == ((void*)0))
        goto end;






    if (rawin) {
        rv = 1;
    } else {
        switch (pkey_op) {
        case 134:
            rv = EVP_PKEY_sign_init(ctx);
            break;

        case 133:
            rv = EVP_PKEY_verify_init(ctx);
            break;

        case 132:
            rv = EVP_PKEY_verify_recover_init(ctx);
            break;

        case 135:
            rv = EVP_PKEY_encrypt_init(ctx);
            break;

        case 137:
            rv = EVP_PKEY_decrypt_init(ctx);
            break;

        case 136:
            rv = EVP_PKEY_derive_init(ctx);
            break;
        }
    }

    if (rv <= 0) {
        EVP_PKEY_CTX_free(ctx);
        ctx = ((void*)0);
    }

 end:
    OPENSSL_free(passin);
    return ctx;

}
