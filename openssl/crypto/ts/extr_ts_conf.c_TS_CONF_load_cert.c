
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int * PEM_read_bio_X509_AUX (int *,int *,int *,int *) ;
 int TS_F_TS_CONF_LOAD_CERT ;
 int TS_R_CANNOT_LOAD_CERT ;
 int TSerr (int ,int ) ;

X509 *TS_CONF_load_cert(const char *file)
{
    BIO *cert = ((void*)0);
    X509 *x = ((void*)0);

    if ((cert = BIO_new_file(file, "r")) == ((void*)0))
        goto end;
    x = PEM_read_bio_X509_AUX(cert, ((void*)0), ((void*)0), ((void*)0));
 end:
    if (x == ((void*)0))
        TSerr(TS_F_TS_CONF_LOAD_CERT, TS_R_CANNOT_LOAD_CERT);
    BIO_free(cert);
    return x;
}
