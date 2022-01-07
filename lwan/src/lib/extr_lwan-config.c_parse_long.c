
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 long strtol (char const*,char**,int ) ;

long parse_long(const char *value, long default_value)
{
    char *endptr;
    long parsed;

    errno = 0;
    parsed = strtol(value, &endptr, 0);

    if (errno != 0)
        return default_value;

    if (*endptr != '\0' || value == endptr)
        return default_value;

    return parsed;
}
