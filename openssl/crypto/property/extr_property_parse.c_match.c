
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_space (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static int match(const char *t[], const char m[], size_t m_len)
{
    const char *s = *t;

    if (strncasecmp(s, m, m_len) == 0) {
        *t = skip_space(s + m_len);
        return 1;
    }
    return 0;
}
