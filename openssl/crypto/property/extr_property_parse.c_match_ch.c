
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_space (char const*) ;

__attribute__((used)) static int match_ch(const char *t[], char m)
{
    const char *s = *t;

    if (*s == m) {
        *t = skip_space(s + 1);
        return 1;
    }
    return 0;
}
