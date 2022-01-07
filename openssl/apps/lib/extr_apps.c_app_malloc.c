
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*,int ,int,char const*) ;
 int ERR_print_errors (int ) ;
 void* OPENSSL_malloc (int) ;
 int bio_err ;
 int exit (int) ;
 int opt_getprog () ;

void* app_malloc(int sz, const char *what)
{
    void *vp = OPENSSL_malloc(sz);

    if (vp == ((void*)0)) {
        BIO_printf(bio_err, "%s: Could not allocate %d bytes for %s\n",
                opt_getprog(), sz, what);
        ERR_print_errors(bio_err);
        exit(1);
    }
    return vp;
}
