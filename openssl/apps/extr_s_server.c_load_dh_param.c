
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int * PEM_read_bio_DHparams (int *,int *,int *,int *) ;

__attribute__((used)) static DH *load_dh_param(const char *dhfile)
{
    DH *ret = ((void*)0);
    BIO *bio;

    if ((bio = BIO_new_file(dhfile, "r")) == ((void*)0))
        goto err;
    ret = PEM_read_bio_DHparams(bio, ((void*)0), ((void*)0), ((void*)0));
 err:
    BIO_free(bio);
    return ret;
}
