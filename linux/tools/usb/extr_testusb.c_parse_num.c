
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long UINT_MAX ;
 scalar_t__ errno ;
 unsigned long strtoul (char const*,char**,int ) ;

__attribute__((used)) static int parse_num(unsigned *num, const char *str)
{
 unsigned long val;
 char *end;

 errno = 0;
 val = strtoul(str, &end, 0);
 if (errno || *end || val > UINT_MAX)
  return -1;
 *num = val;
 return 0;
}
