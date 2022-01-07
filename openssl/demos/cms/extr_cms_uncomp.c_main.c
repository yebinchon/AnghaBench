
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int CMS_ContentInfo_free (int *) ;
 int CMS_uncompress (int *,int *,int *,int ) ;
 int ERR_load_crypto_strings () ;
 int ERR_print_errors_fp (int ) ;
 int OpenSSL_add_all_algorithms () ;
 int * SMIME_read_CMS (int *,int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

int main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    CMS_ContentInfo *cms = ((void*)0);
    int ret = 1;

    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();



    in = BIO_new_file("smcomp.txt", "r");

    if (!in)
        goto err;


    cms = SMIME_read_CMS(in, ((void*)0));

    if (!cms)
        goto err;

    out = BIO_new_file("smuncomp.txt", "w");
    if (!out)
        goto err;


    if (!CMS_uncompress(cms, out, ((void*)0), 0))
        goto err;

    ret = 0;

 err:

    if (ret) {
        fprintf(stderr, "Error Uncompressing Data\n");
        ERR_print_errors_fp(stderr);
    }

    CMS_ContentInfo_free(cms);
    BIO_free(in);
    BIO_free(out);
    return ret;
}
