
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SRP_NO_ERROR ;
 int SRP_VBASE_free (int *) ;
 int SRP_VBASE_init (int *,char*) ;
 int * SRP_VBASE_new (int *) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_CTX_set_max_proto_version (int *,int ) ;
 int SSL_CTX_set_srp_password (int *,char*) ;
 int SSL_CTX_set_srp_username (int *,char*) ;
 int SSL_CTX_set_srp_username_callback (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int TLS1_2_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_new_vbase (char*,char*) ;
 int create_new_vfile (char*,char*,char*) ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 char* srpvfile ;
 int ssl_srp_cb ;
 char* tmpfilename ;
 int * vbase ;

__attribute__((used)) static int test_srp(int tst)
{
    char *userid = "test", *password = "password", *tstsrpfile;
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int ret, testresult = 0;

    vbase = SRP_VBASE_new(((void*)0));
    if (!TEST_ptr(vbase))
        goto end;

    if (tst == 0 || tst == 1) {
        if (!TEST_true(create_new_vbase(userid, password)))
            goto end;
    } else {
        if (tst == 4 || tst == 5) {
            if (!TEST_true(create_new_vfile(userid, password, tmpfilename)))
                goto end;
            tstsrpfile = tmpfilename;
        } else {
            tstsrpfile = srpvfile;
        }
        if (!TEST_int_eq(SRP_VBASE_init(vbase, tstsrpfile), SRP_NO_ERROR))
            goto end;
    }

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (!TEST_int_gt(SSL_CTX_set_srp_username_callback(sctx, ssl_srp_cb), 0)
            || !TEST_true(SSL_CTX_set_cipher_list(cctx, "SRP-AES-128-CBC-SHA"))
            || !TEST_true(SSL_CTX_set_max_proto_version(sctx, TLS1_2_VERSION))
            || !TEST_true(SSL_CTX_set_max_proto_version(cctx, TLS1_2_VERSION))
            || !TEST_int_gt(SSL_CTX_set_srp_username(cctx, userid), 0))
        goto end;

    if (tst % 2 == 1) {
        if (!TEST_int_gt(SSL_CTX_set_srp_password(cctx, "badpass"), 0))
            goto end;
    } else {
        if (!TEST_int_gt(SSL_CTX_set_srp_password(cctx, password), 0))
            goto end;
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0))))
        goto end;

    ret = create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE);
    if (ret) {
        if (!TEST_true(tst % 2 == 0))
            goto end;
    } else {
        if (!TEST_true(tst % 2 == 1))
            goto end;
    }

    testresult = 1;

 end:
    SRP_VBASE_free(vbase);
    vbase = ((void*)0);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
