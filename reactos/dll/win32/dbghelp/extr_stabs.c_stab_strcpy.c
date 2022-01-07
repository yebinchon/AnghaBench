
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static void stab_strcpy(char* dest, int sz, const char* source)
{
    char* ptr = dest;






    while (*source != '\0')
    {
        if (source[0] != ':' && sz-- > 0) *ptr++ = *source++;
        else if (source[1] == ':' && (sz -= 2) > 0)
        {
            *ptr++ = *source++;
            *ptr++ = *source++;
        }
        else break;
    }
    *ptr-- = '\0';







    if (ptr >= dest && isdigit(*ptr))
    {
        while (ptr > dest && isdigit(*ptr)) ptr--;
        if (*ptr == '.') *ptr = '\0';
    }
    assert(sz > 0);
}
