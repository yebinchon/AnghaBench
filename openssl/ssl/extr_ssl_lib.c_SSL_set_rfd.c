
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 scalar_t__ BIO_TYPE_SOCKET ;
 scalar_t__ BIO_get_fd (int *,int *) ;
 scalar_t__ BIO_method_type (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_socket () ;
 int BIO_set_fd (int *,int,int ) ;
 int BIO_up_ref (int *) ;
 int ERR_R_BUF_LIB ;
 int SSL_F_SSL_SET_RFD ;
 int * SSL_get_wbio (int *) ;
 int SSL_set0_rbio (int *,int *) ;
 int SSLerr (int ,int ) ;

int SSL_set_rfd(SSL *s, int fd)
{
    BIO *wbio = SSL_get_wbio(s);

    if (wbio == ((void*)0) || BIO_method_type(wbio) != BIO_TYPE_SOCKET
        || ((int)BIO_get_fd(wbio, ((void*)0)) != fd)) {
        BIO *bio = BIO_new(BIO_s_socket());

        if (bio == ((void*)0)) {
            SSLerr(SSL_F_SSL_SET_RFD, ERR_R_BUF_LIB);
            return 0;
        }
        BIO_set_fd(bio, fd, BIO_NOCLOSE);
        SSL_set0_rbio(s, bio);
    } else {
        BIO_up_ref(wbio);
        SSL_set0_rbio(s, wbio);
    }

    return 1;
}
