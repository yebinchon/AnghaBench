
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_11__ {int wbio; } ;
typedef int SSL_CTX ;
typedef TYPE_1__ SSL ;
typedef int FILE ;
typedef unsigned char BIO ;


 int BIO_free (unsigned char*) ;
 int BIO_get_fp (unsigned char*,int **) ;
 int BIO_get_ktls_send (int ) ;
 unsigned char* BIO_new_file (int ,char*) ;
 scalar_t__ BIO_write (unsigned char*,unsigned char*,scalar_t__) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_zalloc (scalar_t__) ;
 int RAND_bytes (unsigned char*,scalar_t__) ;
 int SENDFILE_CHUNK ;
 scalar_t__ SENDFILE_SZ ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_ERROR_NONE ;
 scalar_t__ SSL_ERROR_WANT_READ ;
 scalar_t__ SSL_ERROR_WANT_WRITE ;
 int SSL_free (TYPE_1__*) ;
 scalar_t__ SSL_get_error (TYPE_1__*,int) ;
 int SSL_read (TYPE_1__*,unsigned char*,int) ;
 int SSL_sendfile (TYPE_1__*,int,scalar_t__,int,int ) ;
 int SSL_shutdown (TYPE_1__*) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (TYPE_1__*,TYPE_1__*,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects2 (int *,int *,TYPE_1__**,TYPE_1__**,int,int) ;
 int create_test_sockets (int*,int*) ;
 int fileno (int *) ;
 int ktls_chk_platform (int) ;
 int min (int ,scalar_t__) ;
 int privkey ;
 int tmpfilename ;

__attribute__((used)) static int test_ktls_sendfile(void)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    unsigned char *buf, *buf_dst;
    BIO *out = ((void*)0), *in = ((void*)0);
    int cfd, sfd, ffd, err;
    ssize_t chunk_size = 0;
    off_t chunk_off = 0;
    int testresult = 0;
    FILE *ffdp;

    buf = OPENSSL_zalloc(SENDFILE_SZ);
    buf_dst = OPENSSL_zalloc(SENDFILE_SZ);
    if (!TEST_ptr(buf) || !TEST_ptr(buf_dst)
        || !TEST_true(create_test_sockets(&cfd, &sfd)))
        goto end;


    if (!ktls_chk_platform(sfd)) {
        testresult = 1;
        goto end;
    }


    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_2_VERSION, TLS1_2_VERSION,
                                       &sctx, &cctx, cert, privkey))
        || !TEST_true(SSL_CTX_set_cipher_list(cctx,
                                              "AES128-GCM-SHA256"))
        || !TEST_true(create_ssl_objects2(sctx, cctx, &serverssl,
                                          &clientssl, sfd, cfd)))
        goto end;

    if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                         SSL_ERROR_NONE))
        || !TEST_true(BIO_get_ktls_send(serverssl->wbio)))
        goto end;

    RAND_bytes(buf, SENDFILE_SZ);
    out = BIO_new_file(tmpfilename, "wb");
    if (!TEST_ptr(out))
        goto end;

    if (BIO_write(out, buf, SENDFILE_SZ) != SENDFILE_SZ)
        goto end;

    BIO_free(out);
    out = ((void*)0);
    in = BIO_new_file(tmpfilename, "rb");
    BIO_get_fp(in, &ffdp);
    ffd = fileno(ffdp);

    while (chunk_off < SENDFILE_SZ) {
        chunk_size = min(SENDFILE_CHUNK, SENDFILE_SZ - chunk_off);
        while ((err = SSL_sendfile(serverssl,
                                   ffd,
                                   chunk_off,
                                   chunk_size,
                                   0)) != chunk_size) {
            if (SSL_get_error(serverssl, err) != SSL_ERROR_WANT_WRITE)
                goto end;
        }
        while ((err = SSL_read(clientssl,
                               buf_dst + chunk_off,
                               chunk_size)) != chunk_size) {
            if (SSL_get_error(clientssl, err) != SSL_ERROR_WANT_READ)
                goto end;
        }


        if (!TEST_mem_eq(buf_dst + chunk_off,
                         chunk_size,
                         buf + chunk_off,
                         chunk_size))
            goto end;

        chunk_off += chunk_size;
    }

    testresult = 1;
end:
    if (clientssl) {
        SSL_shutdown(clientssl);
        SSL_free(clientssl);
    }
    if (serverssl) {
        SSL_shutdown(serverssl);
        SSL_free(serverssl);
    }
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    serverssl = clientssl = ((void*)0);
    BIO_free(out);
    BIO_free(in);
    OPENSSL_free(buf);
    OPENSSL_free(buf_dst);
    return testresult;
}
