
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bstr0 (char const*) ;
 int mp_is_url (int ) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static const char *match_proto(const char *url, const char *proto)
{
    int l = strlen(proto);
    if (l > 0) {
        if (strncasecmp(url, proto, l) == 0 && strncmp("://", url + l, 3) == 0)
            return url + l + 3;
    } else if (!mp_is_url(bstr0(url))) {
        return url;
    }
    return ((void*)0);
}
