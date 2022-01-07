
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
contains_char(const char *string, size_t length, int c)
{
    size_t i;
    for (i=0; i<length; i++) {
        if (string[i] == c)
            return 1;
    }
    return 0;
}
