
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
skip_leading_whitespace(const char *str)
{
    while (*str)
    {
        const char c = *str;
        if (!(c == ' ' || c == '\t'))
        {
            break;
        }
        ++str;
    }
    return str;
}
