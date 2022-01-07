
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static inline bool
has_digit(const unsigned char *src)
{
    unsigned char c;
    while ((c = *src++))
    {
        if (isdigit(c))
        {
            return 1;
        }
    }
    return 0;
}
