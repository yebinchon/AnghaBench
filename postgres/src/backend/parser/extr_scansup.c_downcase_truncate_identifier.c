
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* downcase_identifier (char const*,int,int,int) ;

char *
downcase_truncate_identifier(const char *ident, int len, bool warn)
{
 return downcase_identifier(ident, len, warn, 1);
}
