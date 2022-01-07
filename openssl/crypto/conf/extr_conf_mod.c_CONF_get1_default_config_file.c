
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_snprintf (char*,int,char*,int ,char*,int ) ;
 int OPENSSL_CONF ;
 char* OPENSSL_malloc (int) ;
 char* OPENSSL_strdup (char*) ;
 int X509_get_default_cert_area () ;
 char* ossl_safe_getenv (char*) ;
 int strlen (int ) ;

char *CONF_get1_default_config_file(void)
{
    char *file, *sep = "";
    int len;

    if ((file = ossl_safe_getenv("OPENSSL_CONF")) != ((void*)0))
        return OPENSSL_strdup(file);

    len = strlen(X509_get_default_cert_area());

    len++;
    sep = "/";

    len += strlen(OPENSSL_CONF);

    file = OPENSSL_malloc(len + 1);

    if (file == ((void*)0))
        return ((void*)0);
    BIO_snprintf(file, len + 1, "%s%s%s", X509_get_default_cert_area(),
                 sep, OPENSSL_CONF);

    return file;
}
