
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL ;


 int SSL_ERROR_WANT_READ ;
 int SSL_get_error (int *,int ) ;
 scalar_t__ SSL_read_ex (int *,unsigned char*,int,size_t*) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_ulong_eq (size_t,int ) ;
 int create_bare_ssl_connection (int *,int *,int,int) ;

int create_ssl_connection(SSL *serverssl, SSL *clientssl, int want)
{
    int i;
    unsigned char buf;
    size_t readbytes;

    if (!create_bare_ssl_connection(serverssl, clientssl, want, 1))
        return 0;






    for (i = 0; i < 2; i++) {
        if (SSL_read_ex(clientssl, &buf, sizeof(buf), &readbytes) > 0) {
            if (!TEST_ulong_eq(readbytes, 0))
                return 0;
        } else if (!TEST_int_eq(SSL_get_error(clientssl, 0),
                                SSL_ERROR_WANT_READ)) {
            return 0;
        }
    }

    return 1;
}
