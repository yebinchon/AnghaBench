
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ parse_number (char const**,int *) ;

__attribute__((used)) static bool number_is_valid(const char *num)
{
 return (parse_number(&num, ((void*)0)) && *num == '\0');
}
