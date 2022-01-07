
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
np(const char *str)
{
    if (str)
    {
        return str;
    }
    else
    {
        return "[NULL]";
    }
}
