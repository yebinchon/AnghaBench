
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_printf (int *,char*,char const*,char*) ;
 char* OPENSSL_buf2hexstr (unsigned char const*,long) ;
 int OPENSSL_free (char*) ;

__attribute__((used)) static int print_mac(BIO *bio, const char *label, const unsigned char *mac,
                     size_t len)
{
    int ret;
    char *hexstr = ((void*)0);

    hexstr = OPENSSL_buf2hexstr(mac, (long)len);
    if (hexstr == ((void*)0))
        return 0;
    ret = BIO_printf(bio, "%s = %s\n", label, hexstr);
    OPENSSL_free(hexstr);
    return ret;
}
