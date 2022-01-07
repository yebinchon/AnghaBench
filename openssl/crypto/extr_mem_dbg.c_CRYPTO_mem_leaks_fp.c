
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int CRYPTO_MEM_CHECK_DISABLE ;
 int CRYPTO_MEM_CHECK_ENABLE ;
 int CRYPTO_mem_ctrl (int ) ;
 int CRYPTO_mem_leaks_cb (int ,int *) ;
 int print_bio ;

int CRYPTO_mem_leaks_fp(FILE *fp)
{
    BIO *b;
    int ret;






    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_DISABLE);
    b = BIO_new(BIO_s_file());
    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
    if (b == ((void*)0))
        return -1;
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = CRYPTO_mem_leaks_cb(print_bio, b);
    BIO_free(b);
    return ret;
}
