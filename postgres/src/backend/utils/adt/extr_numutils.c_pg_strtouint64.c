
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int _strtoui64 (char const*,char**,int) ;
 int strtoul (char const*,char**,int) ;
 int strtoull (char const*,char**,int) ;

uint64
pg_strtouint64(const char *str, char **endptr, int base)
{





 return strtoul(str, endptr, base);

}
