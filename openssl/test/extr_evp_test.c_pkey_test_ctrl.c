
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* err; int skip; } ;
typedef TYPE_1__ EVP_TEST ;
typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTX_ctrl_str (int *,char*,char*) ;
 int * EVP_get_cipherbynid (int) ;
 int * EVP_get_digestbynid (int) ;
 int NID_undef ;
 int OBJ_ln2nid (char*) ;
 int OBJ_sn2nid (char*) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int TEST_ptr (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int pkey_test_ctrl(EVP_TEST *t, EVP_PKEY_CTX *pctx,
                          const char *value)
{
    int rv;
    char *p, *tmpval;

    if (!TEST_ptr(tmpval = OPENSSL_strdup(value)))
        return 0;
    p = strchr(tmpval, ':');
    if (p != ((void*)0))
        *p++ = '\0';
    rv = EVP_PKEY_CTX_ctrl_str(pctx, tmpval, p);
    if (rv == -2) {
        t->err = "PKEY_CTRL_INVALID";
        rv = 1;
    } else if (p != ((void*)0) && rv <= 0) {

        int nid = OBJ_sn2nid(p);

        if (nid == NID_undef)
             nid = OBJ_ln2nid(p);
        if (nid != NID_undef
                && EVP_get_digestbynid(nid) == ((void*)0)
                && EVP_get_cipherbynid(nid) == ((void*)0)) {
            t->skip = 1;
            rv = 1;
        } else {
            t->err = "PKEY_CTRL_ERROR";
            rv = 1;
        }
    }
    OPENSSL_free(tmpval);
    return rv > 0;
}
