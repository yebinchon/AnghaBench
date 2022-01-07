
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int TEST_int_eq (long,int) ;
 int TEST_ptr (int *) ;
 int X509_free (int *) ;
 long X509_get_pathlen (int *) ;
 int infile ;

__attribute__((used)) static int test_pathlen(void)
{
    X509 *x = ((void*)0);
    BIO *b = ((void*)0);
    long pathlen;
    int ret = 0;

    if (!TEST_ptr(b = BIO_new_file(infile, "r"))
            || !TEST_ptr(x = PEM_read_bio_X509(b, ((void*)0), ((void*)0), ((void*)0)))
            || !TEST_int_eq(pathlen = X509_get_pathlen(x), 6))
        goto end;

    ret = 1;

end:
    BIO_free(b);
    X509_free(x);
    return ret;
}
