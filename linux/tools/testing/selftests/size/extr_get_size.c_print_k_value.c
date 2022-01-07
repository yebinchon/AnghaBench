
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char const*) ;
 int print_num (unsigned long) ;

__attribute__((used)) static int print_k_value(const char *s, unsigned long num, unsigned long units)
{
 unsigned long long temp;
 int ccode;

 print(s);

 temp = num;
 temp = (temp * units)/1024;
 num = temp;
 ccode = print_num(num);
 print("\n");
 return ccode;
}
