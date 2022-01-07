
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
is_space(char a)
{
 switch (a)
 {
  default:
   return 0;
  case ' ':
  case '\f':
  case '\n':
  case '\r':
  case '\t':
  case '\v':
   return 1;
 }
}
