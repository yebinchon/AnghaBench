
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL ;


 int MAXLOOPS ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_ERROR_WANT_X509_LOOKUP ;
 int SSL_accept (int *) ;
 int SSL_connect (int *) ;
 int SSL_get_error (int *,int) ;
 int SSL_is_dtls (int *) ;
 scalar_t__ SSL_read (int *,unsigned char*,int) ;
 int TEST_info (char*,...) ;
 int ossl_sleep (int) ;

int create_bare_ssl_connection(SSL *serverssl, SSL *clientssl, int want,
                               int read)
{
    int retc = -1, rets = -1, err, abortctr = 0;
    int clienterr = 0, servererr = 0;
    int isdtls = SSL_is_dtls(serverssl);

    do {
        err = SSL_ERROR_WANT_WRITE;
        while (!clienterr && retc <= 0 && err == SSL_ERROR_WANT_WRITE) {
            retc = SSL_connect(clientssl);
            if (retc <= 0)
                err = SSL_get_error(clientssl, retc);
        }

        if (!clienterr && retc <= 0 && err != SSL_ERROR_WANT_READ) {
            TEST_info("SSL_connect() failed %d, %d", retc, err);
            clienterr = 1;
        }
        if (want != SSL_ERROR_NONE && err == want)
            return 0;

        err = SSL_ERROR_WANT_WRITE;
        while (!servererr && rets <= 0 && err == SSL_ERROR_WANT_WRITE) {
            rets = SSL_accept(serverssl);
            if (rets <= 0)
                err = SSL_get_error(serverssl, rets);
        }

        if (!servererr && rets <= 0
                && err != SSL_ERROR_WANT_READ
                && err != SSL_ERROR_WANT_X509_LOOKUP) {
            TEST_info("SSL_accept() failed %d, %d", rets, err);
            servererr = 1;
        }
        if (want != SSL_ERROR_NONE && err == want)
            return 0;
        if (clienterr && servererr)
            return 0;
        if (isdtls && read) {
            unsigned char buf[20];


            if (rets > 0 && retc <= 0) {
                if (SSL_read(serverssl, buf, sizeof(buf)) > 0) {

                    TEST_info("Unexpected SSL_read() success!");
                    return 0;
                }
            }
            if (retc > 0 && rets <= 0) {
                if (SSL_read(clientssl, buf, sizeof(buf)) > 0) {

                    TEST_info("Unexpected SSL_read() success!");
                    return 0;
                }
            }
        }
        if (++abortctr == MAXLOOPS) {
            TEST_info("No progress made");
            return 0;
        }
        if (isdtls && abortctr <= 50 && (abortctr % 10) == 0) {





            ossl_sleep(50);
        }
    } while (retc <=0 || rets <= 0);

    return 1;
}
