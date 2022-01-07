
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_printf (int *,char*,unsigned char) ;
 int BIO_puts (int *,char const*) ;
 int SSL_get0_certificate_types (int *,unsigned char const**) ;
 int cert_type_list ;
 char* lookup (int,int ,int *) ;

__attribute__((used)) static void ssl_print_client_cert_types(BIO *bio, SSL *s)
{
    const unsigned char *p;
    int i;
    int cert_type_num = SSL_get0_certificate_types(s, &p);
    if (!cert_type_num)
        return;
    BIO_puts(bio, "Client Certificate Types: ");
    for (i = 0; i < cert_type_num; i++) {
        unsigned char cert_type = p[i];
        const char *cname = lookup((int)cert_type, cert_type_list, ((void*)0));

        if (i)
            BIO_puts(bio, ", ");
        if (cname != ((void*)0))
            BIO_puts(bio, cname);
        else
            BIO_printf(bio, "UNKNOWN (%d),", cert_type);
    }
    BIO_puts(bio, "\n");
}
