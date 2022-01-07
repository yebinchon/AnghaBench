
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int async_write (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int async_puts(BIO *bio, const char *str)
{
    return async_write(bio, str, strlen(str));
}
