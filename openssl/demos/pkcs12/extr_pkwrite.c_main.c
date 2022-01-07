
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int PKCS12 ;
typedef int FILE ;
typedef int EVP_PKEY ;


 int ERR_load_crypto_strings () ;
 int ERR_print_errors_fp (int ) ;
 int OpenSSL_add_all_algorithms () ;
 int * PEM_read_PrivateKey (int *,int *,int *,int *) ;
 int * PEM_read_X509 (int *,int *,int *,int *) ;
 int * PKCS12_create (char*,char*,int *,int *,int *,int ,int ,int ,int ,int ) ;
 int PKCS12_free (int *) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int i2d_PKCS12_fp (int *,int *) ;
 int rewind (int *) ;
 int stderr ;

int main(int argc, char **argv)
{
    FILE *fp;
    EVP_PKEY *pkey;
    X509 *cert;
    PKCS12 *p12;
    if (argc != 5) {
        fprintf(stderr, "Usage: pkwrite infile password name p12file\n");
        exit(1);
    }
    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();
    if ((fp = fopen(argv[1], "r")) == ((void*)0)) {
        fprintf(stderr, "Error opening file %s\n", argv[1]);
        exit(1);
    }
    cert = PEM_read_X509(fp, ((void*)0), ((void*)0), ((void*)0));
    rewind(fp);
    pkey = PEM_read_PrivateKey(fp, ((void*)0), ((void*)0), ((void*)0));
    fclose(fp);
    p12 = PKCS12_create(argv[2], argv[3], pkey, cert, ((void*)0), 0, 0, 0, 0, 0);
    if (!p12) {
        fprintf(stderr, "Error creating PKCS#12 structure\n");
        ERR_print_errors_fp(stderr);
        exit(1);
    }
    if ((fp = fopen(argv[4], "wb")) == ((void*)0)) {
        fprintf(stderr, "Error opening file %s\n", argv[1]);
        ERR_print_errors_fp(stderr);
        exit(1);
    }
    i2d_PKCS12_fp(fp, p12);
    PKCS12_free(p12);
    fclose(fp);
    return 0;
}
