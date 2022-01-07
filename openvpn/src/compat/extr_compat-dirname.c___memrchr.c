
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
__memrchr(const char *str, int c, size_t n)
{
    const char *end = str;

    end += n - 1;
    while (end >= str)
    {
        if (c == *end)
        {
            return end;
        }
        else
        {
            end--;
        }
    }
    return ((void*)0);
}
