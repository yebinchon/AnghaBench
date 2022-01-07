
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_FP_TEXT ;
 int BIO_NOCLOSE ;
 int BIO_f_linebuffer () ;
 int BIO_f_tap () ;
 int BIO_new (int ) ;
 int * BIO_new_fp (int ,int) ;
 int * BIO_push (int ,int *) ;
 int OPENSSL_assert (int ) ;
 int * bio_err ;
 int * bio_out ;
 int stderr ;
 int stdout ;

void test_open_streams(void)
{
    bio_out = BIO_new_fp(stdout, BIO_NOCLOSE | BIO_FP_TEXT);
    bio_err = BIO_new_fp(stderr, BIO_NOCLOSE | BIO_FP_TEXT);




    bio_err = BIO_push(BIO_new(BIO_f_tap()), bio_err);

    OPENSSL_assert(bio_out != ((void*)0));
    OPENSSL_assert(bio_err != ((void*)0));
}
