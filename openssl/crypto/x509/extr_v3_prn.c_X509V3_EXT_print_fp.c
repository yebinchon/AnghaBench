
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int FILE ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_fp (int *,int ) ;
 int X509V3_EXT_print (int *,int *,int,int) ;

int X509V3_EXT_print_fp(FILE *fp, X509_EXTENSION *ext, int flag, int indent)
{
    BIO *bio_tmp;
    int ret;

    if ((bio_tmp = BIO_new_fp(fp, BIO_NOCLOSE)) == ((void*)0))
        return 0;
    ret = X509V3_EXT_print(bio_tmp, ext, flag, indent);
    BIO_free(bio_tmp);
    return ret;
}
