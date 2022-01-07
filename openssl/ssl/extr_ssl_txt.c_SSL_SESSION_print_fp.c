
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int FILE ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int ERR_R_BUF_LIB ;
 int SSL_F_SSL_SESSION_PRINT_FP ;
 int SSL_SESSION_print (int *,int const*) ;
 int SSLerr (int ,int ) ;

int SSL_SESSION_print_fp(FILE *fp, const SSL_SESSION *x)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        SSLerr(SSL_F_SSL_SESSION_PRINT_FP, ERR_R_BUF_LIB);
        return 0;
    }
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = SSL_SESSION_print(b, x);
    BIO_free(b);
    return ret;
}
