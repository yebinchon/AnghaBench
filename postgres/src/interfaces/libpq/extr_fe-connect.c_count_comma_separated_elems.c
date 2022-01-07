
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
count_comma_separated_elems(const char *input)
{
 int n;

 n = 1;
 for (; *input != '\0'; input++)
 {
  if (*input == ',')
   n++;
 }

 return n;
}
