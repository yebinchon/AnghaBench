
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;
 scalar_t__ strtoul (char const*,int ,int ) ;

__attribute__((used)) static unsigned
parseBoolean(const char *str)
{
    if (str == ((void*)0) || str[0] == 0)
        return 1;
    if (isdigit(str[0])) {
        if (strtoul(str,0,0) == 0)
            return 0;
        else
            return 1;
    }
    switch (str[0]) {
    case 't':
    case 'T':
        return 1;
    case 'f':
    case 'F':
        return 0;
    case 'o':
    case 'O':
        if (str[1] == 'f' || str[1] == 'F')
            return 0;
        else
            return 1;
        break;
    case 'Y':
    case 'y':
        return 1;
    case 'n':
    case 'N':
        return 0;
    }
    return 1;
}
