
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_puts (int *,char*) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_subject_name (int *) ;
 int get_nameopt () ;
 int print_name (int *,char*,int ,int ) ;

int dump_cert_text(BIO *out, X509 *x)
{
    print_name(out, "subject=", X509_get_subject_name(x), get_nameopt());
    BIO_puts(out, "\n");
    print_name(out, "issuer=", X509_get_issuer_name(x), get_nameopt());
    BIO_puts(out, "\n");

    return 0;
}
