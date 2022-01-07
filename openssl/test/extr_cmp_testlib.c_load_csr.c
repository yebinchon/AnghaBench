
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const X509_REQ ;
typedef char const BIO ;


 int BIO_free (char const*) ;
 char* BIO_new_file (char const*,char*) ;
 int TEST_ptr (char const*) ;
 char* d2i_X509_REQ_bio (char const*,int *) ;

X509_REQ *load_csr(const char *file)
{
    X509_REQ *csr = ((void*)0);
    BIO *bio = ((void*)0);

    if (!TEST_ptr(file) || !TEST_ptr(bio = BIO_new_file(file, "rb")))
        return ((void*)0);
    (void)TEST_ptr(csr = d2i_X509_REQ_bio(bio, ((void*)0)));
    BIO_free(bio);
    return csr;
}
