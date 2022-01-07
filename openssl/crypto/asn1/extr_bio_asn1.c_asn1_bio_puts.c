
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int asn1_bio_write (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int asn1_bio_puts(BIO *b, const char *str)
{
    return asn1_bio_write(b, str, strlen(str));
}
