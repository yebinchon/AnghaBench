
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int strlen (char const*) ;
 int watchccs_write (int *,char const*,int ) ;

__attribute__((used)) static int watchccs_puts(BIO *bio, const char *str)
{
    return watchccs_write(bio, str, strlen(str));
}
