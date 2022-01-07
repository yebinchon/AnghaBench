
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {char* locked_username; } ;


 scalar_t__ strlen (char const*) ;

const char *
tls_username(const struct tls_multi *multi, const bool null)
{
    const char *ret = ((void*)0);
    if (multi)
    {
        ret = multi->locked_username;
    }
    if (ret && strlen(ret))
    {
        return ret;
    }
    else if (null)
    {
        return ((void*)0);
    }
    else
    {
        return "UNDEF";
    }
}
