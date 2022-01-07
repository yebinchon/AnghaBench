
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int OPENSSL_free (char*) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 char* test_mk_file_path (char const*,char const*) ;

__attribute__((used)) static X509 *load_pem_cert(const char *dir, const char *file)
{
    X509 *cert = ((void*)0);
    char *file_path = test_mk_file_path(dir, file);

    if (file_path != ((void*)0)) {
        BIO *cert_io = BIO_new_file(file_path, "r");

        if (cert_io != ((void*)0))
            cert = PEM_read_bio_X509(cert_io, ((void*)0), ((void*)0), ((void*)0));
        BIO_free(cert_io);
    }

    OPENSSL_free(file_path);
    return cert;
}
