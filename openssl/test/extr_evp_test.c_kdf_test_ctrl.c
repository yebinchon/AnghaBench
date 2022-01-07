
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* err; int skip; TYPE_1__* data; } ;
struct TYPE_4__ {int * p; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ KDF_DATA ;
typedef TYPE_2__ EVP_TEST ;
typedef int EVP_KDF_CTX ;


 int EVP_KDF_CTX_kdf (int *) ;
 int * EVP_KDF_settable_ctx_params (int ) ;
 int * EVP_get_cipherbynid (int) ;
 int * EVP_get_digestbynid (int) ;
 int NID_undef ;
 int OBJ_ln2nid (char*) ;
 int OBJ_sn2nid (char*) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int OSSL_PARAM_allocate_from_text (int *,int const*,char*,char*,int ) ;
 int OSSL_PARAM_construct_end () ;
 int TEST_ptr (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int kdf_test_ctrl(EVP_TEST *t, EVP_KDF_CTX *kctx,
                         const char *value)
{
    KDF_DATA *kdata = t->data;
    int rv;
    char *p, *name;
    const OSSL_PARAM *defs = EVP_KDF_settable_ctx_params(EVP_KDF_CTX_kdf(kctx));

    if (!TEST_ptr(name = OPENSSL_strdup(value)))
        return 0;
    p = strchr(name, ':');
    if (p != ((void*)0))
        *p++ = '\0';

    rv = OSSL_PARAM_allocate_from_text(kdata->p, defs, name, p,
                                       p != ((void*)0) ? strlen(p) : 0);
    *++kdata->p = OSSL_PARAM_construct_end();
    if (!rv) {
        t->err = "KDF_PARAM_ERROR";
        OPENSSL_free(name);
        return 0;
    }
    if (p != ((void*)0) && strcmp(name, "digest") == 0) {

        int nid = OBJ_sn2nid(p);

        if (nid == NID_undef)
             nid = OBJ_ln2nid(p);
        if (nid != NID_undef && EVP_get_digestbynid(nid) == ((void*)0))
            t->skip = 1;
    }
    if (p != ((void*)0) && strcmp(name, "cipher") == 0) {

        int nid = OBJ_sn2nid(p);

        if (nid == NID_undef)
             nid = OBJ_ln2nid(p);
        if (nid != NID_undef && EVP_get_cipherbynid(nid) == ((void*)0))
            t->skip = 1;
    }
    OPENSSL_free(name);
    return 1;
}
