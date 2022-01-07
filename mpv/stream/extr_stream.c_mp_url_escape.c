
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** hex_digits ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;
 char* talloc_size (void*,int) ;
 char const* url_default_ok ;

char *mp_url_escape(void *talloc_ctx, const char *url, const char *ok)
{
    char *rv = talloc_size(talloc_ctx, strlen(url) * 3 + 1);
    char *out = rv;
    bool negate = ok && ok[0] == '~';

    for (char c; (c = *url); url++) {
        bool as_is = negate ? !strchr(ok + 1, c)
                            : (strchr(url_default_ok, c) || (ok && strchr(ok, c)));
        if (as_is) {
            *out++ = c;
        } else {
            unsigned char v = c;
            *out++ = '%';
            *out++ = hex_digits[v / 16];
            *out++ = hex_digits[v % 16];
        }
    }

    *out = 0;
    return rv;
}
