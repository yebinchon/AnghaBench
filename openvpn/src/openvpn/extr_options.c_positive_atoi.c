
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;

__attribute__((used)) static int
positive_atoi(const char *str)
{
    const int i = atoi(str);
    return i < 0 ? 0 : i;
}
