
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* err; } ;
typedef TYPE_1__ EVP_TEST ;
typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTX_ctrl_str (int *,char*,char*) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int TEST_ptr (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int mac_test_ctrl_pkey(EVP_TEST *t, EVP_PKEY_CTX *pctx,
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
    if (rv == -2)
        t->err = "PKEY_CTRL_INVALID";
    else if (rv <= 0)
        t->err = "PKEY_CTRL_ERROR";
    else
        rv = 1;
    OPENSSL_free(tmpval);
    return rv > 0;
}
