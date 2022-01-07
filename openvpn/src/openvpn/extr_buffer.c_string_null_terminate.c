
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;

void
string_null_terminate(char *str, int len, int capacity)
{
    ASSERT(len >= 0 && len <= capacity && capacity > 0);
    if (len < capacity)
    {
        *(str + len) = '\0';
    }
    else if (len == capacity)
    {
        *(str + len - 1) = '\0';
    }
}
