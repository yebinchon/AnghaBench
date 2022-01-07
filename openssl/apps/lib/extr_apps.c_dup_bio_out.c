
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_FP_TEXT ;
 int BIO_NOCLOSE ;
 int BIO_ctrl (int *,int ,int ,void*) ;
 int BIO_f_linebuffer () ;
 int BIO_new (int ) ;
 int * BIO_new_fp (int ,int) ;
 int * BIO_push (int ,int *) ;
 scalar_t__ FMT_istext (int) ;
 int PREFIX_CTRL_SET_PREFIX ;
 int apps_bf_prefix () ;
 void* getenv (char*) ;
 int stdout ;

BIO *dup_bio_out(int format)
{
    BIO *b = BIO_new_fp(stdout,
                        BIO_NOCLOSE | (FMT_istext(format) ? BIO_FP_TEXT : 0));
    void *prefix = ((void*)0);






    if (FMT_istext(format)
        && (prefix = getenv("HARNESS_OSSL_PREFIX")) != ((void*)0)) {
        b = BIO_push(BIO_new(apps_bf_prefix()), b);
        BIO_ctrl(b, PREFIX_CTRL_SET_PREFIX, 0, prefix);
    }

    return b;
}
