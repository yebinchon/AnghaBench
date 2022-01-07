
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,...) ;
 int ERR_print_errors (int ) ;
 int PEM_write_bio_SSL_SESSION (int *,int *) ;
 int bio_err ;

__attribute__((used)) static int write_session(const char *filename, SSL_SESSION *sess)
{
    BIO *f = BIO_new_file(filename, "w");

    if (sess == ((void*)0)) {
        BIO_printf(bio_err, "No session information\n");
        return 0;
    }
    if (f == ((void*)0)) {
        BIO_printf(bio_err, "Can't open session file %s\n", filename);
        ERR_print_errors(bio_err);
        return 0;
    }
    PEM_write_bio_SSL_SESSION(f, sess);
    BIO_free(f);
    return 1;
}
