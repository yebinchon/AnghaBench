
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mymalloc (scalar_t__) ;
 scalar_t__ urlcount (char const*,char const*) ;
 int urlencode (char const*,char*,char const*) ;

char *
CGI_encode_url(const char *p, const char *keep) {
    char *out;

    if (p == 0) {
        return 0;
    }
    out = mymalloc(urlcount(p, keep) + 1);
    urlencode(p, out, keep);
    return out;
}
