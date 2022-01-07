
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int strlen (char const*) ;
 int tap_write_ex (int *,char const*,int ,size_t*) ;

__attribute__((used)) static int tap_puts(BIO *b, const char *str)
{
    size_t m;

    if (!tap_write_ex(b, str, strlen(str), &m))
        return 0;
    return m;
}
