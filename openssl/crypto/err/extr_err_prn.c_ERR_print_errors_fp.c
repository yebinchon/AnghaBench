
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_fp (int *,int ) ;
 int ERR_print_errors_cb (int ,int *) ;
 int print_bio ;

void ERR_print_errors_fp(FILE *fp)
{
    BIO *bio = BIO_new_fp(fp, BIO_NOCLOSE);
    if (bio == ((void*)0))
        return;

    ERR_print_errors_cb(print_bio, bio);
    BIO_free(bio);
}
