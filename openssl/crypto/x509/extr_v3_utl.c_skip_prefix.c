
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int X509_CHECK_FLAG_SINGLE_LABEL_SUBDOMAINS ;
 unsigned int _X509_CHECK_FLAG_DOT_SUBDOMAINS ;

__attribute__((used)) static void skip_prefix(const unsigned char **p, size_t *plen,
                        size_t subject_len,
                        unsigned int flags)
{
    const unsigned char *pattern = *p;
    size_t pattern_len = *plen;







    if ((flags & _X509_CHECK_FLAG_DOT_SUBDOMAINS) == 0)
        return;

    while (pattern_len > subject_len && *pattern) {
        if ((flags & X509_CHECK_FLAG_SINGLE_LABEL_SUBDOMAINS) &&
            *pattern == '.')
            break;
        ++pattern;
        --pattern_len;
    }


    if (pattern_len == subject_len) {
        *p = pattern;
        *plen = pattern_len;
    }
}
