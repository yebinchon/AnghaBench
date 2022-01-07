
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* X509_CERT_DIR ;

const char *X509_get_default_cert_dir(void)
{
    return X509_CERT_DIR;
}
