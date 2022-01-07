
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_isdigit (char const) ;

__attribute__((used)) static bool all_digits(const char *str)
{
    if (str == ((void*)0) || str[0] == '\0') {
        return 0;
    }

    for (const char *c = str; *c != '\0'; ++c) {
        if (!mp_isdigit(*c))
            return 0;
    }
    return 1;
}
