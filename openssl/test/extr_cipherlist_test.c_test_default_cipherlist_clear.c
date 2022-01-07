
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client; int server; } ;
typedef int SSL ;


 int ERR_GET_REASON (int ) ;
 int ERR_get_error () ;
 int SETUP_CIPHERLIST_TEST_FIXTURE () ;
 int SSL_CTX_set_cipher_list (int ,char*) ;
 int SSL_R_NO_CIPHER_MATCH ;
 int SSL_free (int *) ;
 int * SSL_new (int ) ;
 int SSL_set_cipher_list (int *,char*) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_ptr (int *) ;
 TYPE_1__* fixture ;
 int result ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static int test_default_cipherlist_clear(void)
{
    SETUP_CIPHERLIST_TEST_FIXTURE();
    SSL *s = ((void*)0);

    if (fixture == ((void*)0))
        return 0;

    if (!TEST_int_eq(SSL_CTX_set_cipher_list(fixture->server, "no-such"), 0))
        goto end;

    if (!TEST_int_eq(ERR_GET_REASON(ERR_get_error()), SSL_R_NO_CIPHER_MATCH))
        goto end;

    s = SSL_new(fixture->client);

    if (!TEST_ptr(s))
      goto end;

    if (!TEST_int_eq(SSL_set_cipher_list(s, "no-such"), 0))
        goto end;

    if (!TEST_int_eq(ERR_GET_REASON(ERR_get_error()),
                SSL_R_NO_CIPHER_MATCH))
        goto end;

    result = 1;
end:
    SSL_free(s);
    tear_down(fixture);
    return result;
}
