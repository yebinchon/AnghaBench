
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,char const*) ;
 int ERR_print_errors (int ) ;
 int * PEM_read_bio_SSL_SESSION (int *,int *,int ,int *) ;
 int bio_err ;

__attribute__((used)) static SSL_SESSION *read_session(const char *filename)
{
    SSL_SESSION *sess;
    BIO *f = BIO_new_file(filename, "r");

    if (f == ((void*)0)) {
        BIO_printf(bio_err, "Can't open session file %s\n", filename);
        ERR_print_errors(bio_err);
        return ((void*)0);
    }
    sess = PEM_read_bio_SSL_SESSION(f, ((void*)0), 0, ((void*)0));
    if (sess == ((void*)0)) {
        BIO_printf(bio_err, "Can't parse session file %s\n", filename);
        ERR_print_errors(bio_err);
    }
    BIO_free(f);
    return sess;
}
