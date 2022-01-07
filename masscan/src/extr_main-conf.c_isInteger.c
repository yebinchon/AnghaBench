
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;

__attribute__((used)) static int
isInteger(const char *value)
{
    size_t i;

    if (value == ((void*)0))
        return 0;

    for (i=0; value[i]; i++)
        if (!isdigit(value[i]&0xFF))
            return 0;
    return 1;
}
