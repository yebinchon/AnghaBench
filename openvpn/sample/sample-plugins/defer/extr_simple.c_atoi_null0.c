
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;

__attribute__((used)) static int
atoi_null0(const char *str)
{
    if (str)
    {
        return atoi(str);
    }
    else
    {
        return 0;
    }
}
