
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int FILE ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int ERR_R_BUF_LIB ;
 int RSA_F_RSA_PRINT_FP ;
 int RSA_print (int *,int const*,int) ;
 int RSAerr (int ,int ) ;

int RSA_print_fp(FILE *fp, const RSA *x, int off)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        RSAerr(RSA_F_RSA_PRINT_FP, ERR_R_BUF_LIB);
        return 0;
    }
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = RSA_print(b, x, off);
    BIO_free(b);
    return ret;
}
