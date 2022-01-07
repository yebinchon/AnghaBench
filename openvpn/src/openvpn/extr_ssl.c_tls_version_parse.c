
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const TLS_VER_1_0 ;
 int const TLS_VER_1_1 ;
 int const TLS_VER_1_2 ;
 int const TLS_VER_1_3 ;
 int TLS_VER_BAD ;
 int strcmp (char const*,char*) ;
 int tls_version_max () ;

int
tls_version_parse(const char *vstr, const char *extra)
{
    const int max_version = tls_version_max();
    if (!strcmp(vstr, "1.0") && TLS_VER_1_0 <= max_version)
    {
        return TLS_VER_1_0;
    }
    else if (!strcmp(vstr, "1.1") && TLS_VER_1_1 <= max_version)
    {
        return TLS_VER_1_1;
    }
    else if (!strcmp(vstr, "1.2") && TLS_VER_1_2 <= max_version)
    {
        return TLS_VER_1_2;
    }
    else if (!strcmp(vstr, "1.3") && TLS_VER_1_3 <= max_version)
    {
        return TLS_VER_1_3;
    }
    else if (extra && !strcmp(extra, "or-highest"))
    {
        return max_version;
    }
    else
    {
        return TLS_VER_BAD;
    }
}
