
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool is_reserved_name(const char *str)
{
 return (strcmp(str, "int") == 0) || (strcmp(str, "float") == 0) ||
        (strcmp(str, "bool") == 0) || (strcmp(str, "ptr") == 0) ||
        (strcmp(str, "string") == 0) || (strcmp(str, "void") == 0) ||
        (strcmp(str, "return") == 0);
}
