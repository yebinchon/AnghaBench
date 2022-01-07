
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int ERR_clear_error () ;
 int SSL3_RT_APPLICATION_DATA ;
 int SSL3_RT_HANDSHAKE ;
 scalar_t__ SSL3_RT_MAX_COMPRESSED_OVERHEAD ;
 size_t SSL3_RT_MAX_ENCRYPTED_LENGTH ;
 size_t SSL3_RT_MAX_PLAIN_LENGTH ;
 size_t SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_max_proto_version (int *,int) ;
 int SSL_ERROR_NONE ;
 int SSL_accept (int *) ;
 int SSL_free (int *) ;
 int * SSL_get_rbio (int *) ;
 int SSL_read_ex (int *,unsigned char*,int,size_t*) ;
 int TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK ;
 int TEST_ENCRYPTED_OVERFLOW_TLS1_2_OK ;
 int TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK ;
 int TEST_ENCRYPTED_OVERFLOW_TLS1_3_OK ;
 int TEST_PLAINTEXT_OVERFLOW_NOT_OK ;
 int TEST_PLAINTEXT_OVERFLOW_OK ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_le (int ,int ) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int fail_due_to_record_overflow (int) ;
 int privkey ;
 int write_record (int *,size_t,int ,int) ;

__attribute__((used)) static int test_record_overflow(int idx)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    size_t len = 0;
    size_t written;
    int overf_expected;
    unsigned char buf;
    BIO *serverbio;
    int recversion;
    ERR_clear_error();

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_OK
            || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK) {
        len = SSL3_RT_MAX_ENCRYPTED_LENGTH;

        len -= SSL3_RT_MAX_COMPRESSED_OVERHEAD;

        SSL_CTX_set_max_proto_version(sctx, TLS1_2_VERSION);
    } else if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_OK
               || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK) {
        len = SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH;
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0))))
        goto end;

    serverbio = SSL_get_rbio(serverssl);

    if (idx == TEST_PLAINTEXT_OVERFLOW_OK
            || idx == TEST_PLAINTEXT_OVERFLOW_NOT_OK) {
        len = SSL3_RT_MAX_PLAIN_LENGTH;

        if (idx == TEST_PLAINTEXT_OVERFLOW_NOT_OK)
            len++;

        if (!TEST_true(write_record(serverbio, len,
                                    SSL3_RT_HANDSHAKE, TLS1_VERSION)))
            goto end;

        if (!TEST_int_le(SSL_accept(serverssl), 0))
            goto end;

        overf_expected = (idx == TEST_PLAINTEXT_OVERFLOW_OK) ? 0 : 1;
        if (!TEST_int_eq(fail_due_to_record_overflow(0), overf_expected))
            goto end;

        goto success;
    }

    if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                         SSL_ERROR_NONE)))
        goto end;

    if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK
            || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK) {
        overf_expected = 1;
        len++;
    } else {
        overf_expected = 0;
    }

    recversion = TLS1_2_VERSION;

    if (!TEST_true(write_record(serverbio, len, SSL3_RT_APPLICATION_DATA,
                                recversion)))
        goto end;

    if (!TEST_false(SSL_read_ex(serverssl, &buf, sizeof(buf), &written)))
        goto end;

    if (!TEST_int_eq(fail_due_to_record_overflow(1), overf_expected))
        goto end;

 success:
    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;
}
