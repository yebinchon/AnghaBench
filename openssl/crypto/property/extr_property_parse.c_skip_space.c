
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ossl_isspace (char const) ;

__attribute__((used)) static const char *skip_space(const char *s)
{
    while (ossl_isspace(*s))
        s++;
    return s;
}
