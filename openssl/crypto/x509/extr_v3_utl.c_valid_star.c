
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LABEL_HYPHEN ;
 int LABEL_IDNA ;
 int LABEL_START ;
 unsigned int X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static const unsigned char *valid_star(const unsigned char *p, size_t len,
                                       unsigned int flags)
{
    const unsigned char *star = 0;
    size_t i;
    int state = LABEL_START;
    int dots = 0;
    for (i = 0; i < len; ++i) {




        if (p[i] == '*') {
            int atstart = (state & LABEL_START);
            int atend = (i == len - 1 || p[i + 1] == '.');





            if (star != ((void*)0) || (state & LABEL_IDNA) != 0 || dots)
                return ((void*)0);

            if ((flags & X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS)
                && (!atstart || !atend))
                return ((void*)0);

            if (!atstart && !atend)
                return ((void*)0);
            star = &p[i];
            state &= ~LABEL_START;
        } else if (('a' <= p[i] && p[i] <= 'z')
                   || ('A' <= p[i] && p[i] <= 'Z')
                   || ('0' <= p[i] && p[i] <= '9')) {
            if ((state & LABEL_START) != 0
                && len - i >= 4 && strncasecmp((char *)&p[i], "xn--", 4) == 0)
                state |= LABEL_IDNA;
            state &= ~(LABEL_HYPHEN | LABEL_START);
        } else if (p[i] == '.') {
            if ((state & (LABEL_HYPHEN | LABEL_START)) != 0)
                return ((void*)0);
            state = LABEL_START;
            ++dots;
        } else if (p[i] == '-') {

            if ((state & LABEL_START) != 0)
                return ((void*)0);
            state |= LABEL_HYPHEN;
        } else
            return ((void*)0);
    }





    if ((state & (LABEL_START | LABEL_HYPHEN)) != 0 || dots < 2)
        return ((void*)0);
    return star;
}
