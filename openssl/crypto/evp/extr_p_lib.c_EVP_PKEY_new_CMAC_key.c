
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ptr; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
typedef int OSSL_PROVIDER ;
typedef int OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EVP_MAC_CTX ;
typedef int EVP_MAC ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;


 char* ENGINE_get_id (int *) ;
 char* EVP_CIPHER_name (int const*) ;
 int * EVP_CIPHER_provider (int const*) ;
 int EVP_F_EVP_PKEY_NEW_CMAC_KEY ;
 int EVP_MAC_CTX_free (int *) ;
 int * EVP_MAC_CTX_new (int *) ;
 int EVP_MAC_CTX_set_params (int *,int *) ;
 int * EVP_MAC_fetch (int *,int ,int *) ;
 int EVP_MAC_free (int *) ;
 int EVP_PKEY_CMAC ;
 int EVP_PKEY_free (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_R_KEY_SETUP_FAILED ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVPerr (int ,int ) ;
 int OSSL_MAC_NAME_CMAC ;
 char* OSSL_MAC_PARAM_CIPHER ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,char*,size_t) ;
 int OSSL_PARAM_construct_utf8_string (char*,char*,int ) ;
 int * ossl_provider_library_context (int const*) ;
 int pkey_set_type (TYPE_2__*,int *,int ,int *,int) ;

EVP_PKEY *EVP_PKEY_new_CMAC_key(ENGINE *e, const unsigned char *priv,
                                size_t len, const EVP_CIPHER *cipher)
{


    const char *engine_id = e != ((void*)0) ? ENGINE_get_id(e) : ((void*)0);

    const char *cipher_name = EVP_CIPHER_name(cipher);
    const OSSL_PROVIDER *prov = EVP_CIPHER_provider(cipher);
    OPENSSL_CTX *libctx =
        prov == ((void*)0) ? ((void*)0) : ossl_provider_library_context(prov);
    EVP_PKEY *ret = EVP_PKEY_new();
    EVP_MAC *cmac = EVP_MAC_fetch(libctx, OSSL_MAC_NAME_CMAC, ((void*)0));
    EVP_MAC_CTX *cmctx = cmac != ((void*)0) ? EVP_MAC_CTX_new(cmac) : ((void*)0);
    OSSL_PARAM params[4];
    size_t paramsn = 0;

    if (ret == ((void*)0)
            || cmctx == ((void*)0)
            || !pkey_set_type(ret, e, EVP_PKEY_CMAC, ((void*)0), -1)) {

        goto err;
    }


    if (engine_id != ((void*)0))
        params[paramsn++] =
            OSSL_PARAM_construct_utf8_string("engine", (char *)engine_id, 0);


    params[paramsn++] =
        OSSL_PARAM_construct_utf8_string(OSSL_MAC_PARAM_CIPHER,
                                         (char *)cipher_name, 0);
    params[paramsn++] =
        OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY,
                                          (char *)priv, len);
    params[paramsn] = OSSL_PARAM_construct_end();

    if (!EVP_MAC_CTX_set_params(cmctx, params)) {
        EVPerr(EVP_F_EVP_PKEY_NEW_CMAC_KEY, EVP_R_KEY_SETUP_FAILED);
        goto err;
    }

    ret->pkey.ptr = cmctx;
    return ret;

 err:
    EVP_PKEY_free(ret);
    EVP_MAC_CTX_free(cmctx);
    EVP_MAC_free(cmac);
    return ((void*)0);





}
