
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
show_opt(const char *option)
{
    if (!option)
    {
        return "default (not set)";
    }
    else
    {
        return option;
    }
}
