
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int strlen (char const*) ;
 int tls_dump_write (int *,char const*,int ) ;

__attribute__((used)) static int tls_dump_puts(BIO *bio, const char *str)
{
    return tls_dump_write(bio, str, strlen(str));
}
