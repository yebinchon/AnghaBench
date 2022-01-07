
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool eat_c(char **s, char c)
{
    if (**s == c) {
        *s += 1;
        return 1;
    }
    return 0;
}
