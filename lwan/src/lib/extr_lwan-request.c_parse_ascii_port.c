
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNLIKELY (int) ;
 scalar_t__ errno ;
 unsigned short htons (unsigned short) ;
 unsigned long strtoul (char*,char**,int) ;

__attribute__((used)) static bool
parse_ascii_port(char *port, unsigned short *out)
{
    unsigned long parsed;
    char *end_ptr;

    errno = 0;
    parsed = strtoul(port, &end_ptr, 10);

    if (UNLIKELY(errno != 0))
        return 0;

    if (UNLIKELY(*end_ptr != '\0'))
        return 0;

    if (UNLIKELY((unsigned long)(unsigned short)parsed != parsed))
        return 0;

    *out = htons((unsigned short)parsed);
    return 1;
}
