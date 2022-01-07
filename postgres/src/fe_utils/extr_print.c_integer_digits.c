
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
integer_digits(const char *my_str)
{

 if (my_str[0] == '-' || my_str[0] == '+')
  my_str++;

 return strspn(my_str, "0123456789");
}
