
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;

void
string_replace_leading(char *str, const char match, const char replace)
{
    ASSERT(match != '\0');
    while (*str)
    {
        if (*str == match)
        {
            *str = replace;
        }
        else
        {
            break;
        }
        ++str;
    }
}
