
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ssl; } ;
typedef TYPE_1__ PGconn ;
typedef int BIO_METHOD ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int * BIO_new (int *) ;
 int BIO_set_data (int *,TYPE_1__*) ;
 int BIO_set_fd (int *,int,int ) ;
 int ERR_R_BUF_LIB ;
 int SSL_F_SSL_SET_FD ;
 int SSL_set_bio (int ,int *,int *) ;
 int SSLerr (int ,int ) ;
 int * my_BIO_s_socket () ;

__attribute__((used)) static int
my_SSL_set_fd(PGconn *conn, int fd)
{
 int ret = 0;
 BIO *bio;
 BIO_METHOD *bio_method;

 bio_method = my_BIO_s_socket();
 if (bio_method == ((void*)0))
 {
  SSLerr(SSL_F_SSL_SET_FD, ERR_R_BUF_LIB);
  goto err;
 }
 bio = BIO_new(bio_method);
 if (bio == ((void*)0))
 {
  SSLerr(SSL_F_SSL_SET_FD, ERR_R_BUF_LIB);
  goto err;
 }
 BIO_set_data(bio, conn);

 SSL_set_bio(conn->ssl, bio, bio);
 BIO_set_fd(bio, fd, BIO_NOCLOSE);
 ret = 1;
err:
 return ret;
}
