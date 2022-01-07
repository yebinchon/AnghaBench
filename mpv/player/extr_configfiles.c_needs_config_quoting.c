
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_isprint (unsigned char) ;
 scalar_t__ mp_isspace (unsigned char) ;

__attribute__((used)) static bool needs_config_quoting(const char *s)
{
    if (s[0] == '%')
        return 1;
    for (int i = 0; s[i]; i++) {
        unsigned char c = s[i];
        if (!mp_isprint(c) || mp_isspace(c) || c == '#' || c == '\'' || c == '"')
            return 1;
    }
    return 0;
}
