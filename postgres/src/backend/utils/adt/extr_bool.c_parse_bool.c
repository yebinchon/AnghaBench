
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_bool_with_len (char const*,int ,int*) ;
 int strlen (char const*) ;

bool
parse_bool(const char *value, bool *result)
{
 return parse_bool_with_len(value, strlen(value), result);
}
