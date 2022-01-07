
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long parse_long (char const*,int) ;

int parse_int(const char *value, int default_value)
{
    long long_value = parse_long(value, default_value);

    if ((long)(int)long_value != long_value)
        return default_value;

    return (int)long_value;
}
