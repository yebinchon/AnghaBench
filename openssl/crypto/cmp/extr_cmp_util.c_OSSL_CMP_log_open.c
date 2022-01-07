
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_fp (int ,int ) ;
 int CMP_R_NO_STDIO ;
 int CMPerr (int ,int ) ;
 int OSSL_TRACE_CATEGORY_CMP ;
 scalar_t__ OSSL_trace_set_channel (int ,int *) ;
 int stdout ;

int OSSL_CMP_log_open(void)
{

    BIO *bio = BIO_new_fp(stdout, BIO_NOCLOSE);

    if (bio != ((void*)0) && OSSL_trace_set_channel(OSSL_TRACE_CATEGORY_CMP, bio))
        return 1;
    BIO_free(bio);

    CMPerr(0, CMP_R_NO_STDIO);
    return 0;
}
