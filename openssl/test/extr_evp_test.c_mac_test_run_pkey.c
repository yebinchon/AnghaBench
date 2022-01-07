
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* err; TYPE_1__* data; } ;
struct TYPE_6__ {scalar_t__ type; int output_len; int output; int input_len; int input; int controls; int * alg; int key_len; int key; } ;
typedef TYPE_1__ MAC_DATA ;
typedef TYPE_2__ EVP_TEST ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef unsigned char EVP_MD_CTX ;
typedef unsigned char EVP_MD ;


 int EVP_DigestSignFinal (unsigned char*,unsigned char*,size_t*) ;
 int EVP_DigestSignInit (unsigned char*,int **,unsigned char const*,int *,int *) ;
 int EVP_DigestSignUpdate (unsigned char*,int ,int ) ;
 int EVP_MD_CTX_free (unsigned char*) ;
 unsigned char* EVP_MD_CTX_new () ;
 scalar_t__ EVP_PKEY_CMAC ;
 int EVP_PKEY_CTX_free (int *) ;
 scalar_t__ EVP_PKEY_HMAC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new_CMAC_key (int *,int ,int ,int ) ;
 int * EVP_PKEY_new_raw_private_key (scalar_t__,int *,int ,int ) ;
 int EVP_get_cipherbyname (int *) ;
 unsigned char* EVP_get_digestbyname (int *) ;
 int OBJ_nid2sn (scalar_t__) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int TEST_info (char*,int ,...) ;
 int TEST_ptr (unsigned char const*) ;
 int mac_test_ctrl_pkey (TYPE_2__*,int *,int ) ;
 int memory_err_compare (TYPE_2__*,char*,int ,int ,unsigned char*,size_t) ;
 int sk_OPENSSL_STRING_num (int ) ;
 int sk_OPENSSL_STRING_value (int ,int) ;
 int * strstr (int *,char*) ;

__attribute__((used)) static int mac_test_run_pkey(EVP_TEST *t)
{
    MAC_DATA *expected = t->data;
    EVP_MD_CTX *mctx = ((void*)0);
    EVP_PKEY_CTX *pctx = ((void*)0), *genctx = ((void*)0);
    EVP_PKEY *key = ((void*)0);
    const EVP_MD *md = ((void*)0);
    unsigned char *got = ((void*)0);
    size_t got_len;
    int i;

    if (expected->alg == ((void*)0))
        TEST_info("Trying the EVP_PKEY %s test", OBJ_nid2sn(expected->type));
    else
        TEST_info("Trying the EVP_PKEY %s test with %s",
                  OBJ_nid2sn(expected->type), expected->alg);
    if (expected->type == EVP_PKEY_CMAC)
        key = EVP_PKEY_new_CMAC_key(((void*)0), expected->key, expected->key_len,
                                    EVP_get_cipherbyname(expected->alg));
    else
        key = EVP_PKEY_new_raw_private_key(expected->type, ((void*)0), expected->key,
                                           expected->key_len);
    if (key == ((void*)0)) {
        t->err = "MAC_KEY_CREATE_ERROR";
        goto err;
    }

    if (expected->type == EVP_PKEY_HMAC) {
        if (!TEST_ptr(md = EVP_get_digestbyname(expected->alg))) {
            t->err = "MAC_ALGORITHM_SET_ERROR";
            goto err;
        }
    }
    if (!TEST_ptr(mctx = EVP_MD_CTX_new())) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }
    if (!EVP_DigestSignInit(mctx, &pctx, md, ((void*)0), key)) {
        t->err = "DIGESTSIGNINIT_ERROR";
        goto err;
    }
    for (i = 0; i < sk_OPENSSL_STRING_num(expected->controls); i++)
        if (!mac_test_ctrl_pkey(t, pctx,
                                sk_OPENSSL_STRING_value(expected->controls,
                                                        i))) {
            t->err = "EVPPKEYCTXCTRL_ERROR";
            goto err;
        }
    if (!EVP_DigestSignUpdate(mctx, expected->input, expected->input_len)) {
        t->err = "DIGESTSIGNUPDATE_ERROR";
        goto err;
    }
    if (!EVP_DigestSignFinal(mctx, ((void*)0), &got_len)) {
        t->err = "DIGESTSIGNFINAL_LENGTH_ERROR";
        goto err;
    }
    if (!TEST_ptr(got = OPENSSL_malloc(got_len))) {
        t->err = "TEST_FAILURE";
        goto err;
    }
    if (!EVP_DigestSignFinal(mctx, got, &got_len)
            || !memory_err_compare(t, "TEST_MAC_ERR",
                                   expected->output, expected->output_len,
                                   got, got_len)) {
        t->err = "TEST_MAC_ERR";
        goto err;
    }
    t->err = ((void*)0);
 err:
    EVP_MD_CTX_free(mctx);
    OPENSSL_free(got);
    EVP_PKEY_CTX_free(genctx);
    EVP_PKEY_free(key);
    return 1;
}
