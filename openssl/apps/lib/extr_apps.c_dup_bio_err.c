
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_FP_TEXT ;
 int BIO_NOCLOSE ;
 int BIO_f_linebuffer () ;
 int BIO_new (int ) ;
 int * BIO_new_fp (int ,int) ;
 int * BIO_push (int ,int *) ;
 scalar_t__ FMT_istext (int) ;
 int stderr ;

BIO *dup_bio_err(int format)
{
    BIO *b = BIO_new_fp(stderr,
                        BIO_NOCLOSE | (FMT_istext(format) ? BIO_FP_TEXT : 0));




    return b;
}
