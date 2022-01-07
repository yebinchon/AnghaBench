
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
lookup_name(const char **names, int size, int value)
{
 return (value >= 0 && value < size) ? names[value] : ((void*)0);
}
