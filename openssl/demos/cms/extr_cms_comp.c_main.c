
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int CMS_ContentInfo_free (int *) ;
 int CMS_STREAM ;
 int * CMS_compress (int *,int ,int) ;
 int ERR_load_crypto_strings () ;
 int ERR_print_errors_fp (int ) ;
 int NID_zlib_compression ;
 int OpenSSL_add_all_algorithms () ;
 int SMIME_write_CMS (int *,int *,int *,int) ;
 int fprintf (int ,char*) ;
 int stderr ;

int main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    CMS_ContentInfo *cms = ((void*)0);
    int ret = 1;





    int flags = CMS_STREAM;

    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();



    in = BIO_new_file("comp.txt", "r");

    if (!in)
        goto err;


    cms = CMS_compress(in, NID_zlib_compression, flags);

    if (!cms)
        goto err;

    out = BIO_new_file("smcomp.txt", "w");
    if (!out)
        goto err;


    if (!SMIME_write_CMS(out, cms, in, flags))
        goto err;

    ret = 0;

 err:

    if (ret) {
        fprintf(stderr, "Error Compressing Data\n");
        ERR_print_errors_fp(stderr);
    }

    CMS_ContentInfo_free(cms);
    BIO_free(in);
    BIO_free(out);
    return ret;
}
