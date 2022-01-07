
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,char const*) ;
 unsigned long long strtoll (char const*,int *,int ) ;

__attribute__((used)) static unsigned long long parse_number(const char *str)
{
 unsigned long long n;

 n = strtoll(str, ((void*)0), 0);

 if (n == 0 && str[0] != '0')
  fatal("invalid name or number: %s\n", str);

 return n;
}
