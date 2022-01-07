
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
get_hexdigit(char digit, int *value)
{
 if ('0' <= digit && digit <= '9')
  *value = digit - '0';
 else if ('A' <= digit && digit <= 'F')
  *value = digit - 'A' + 10;
 else if ('a' <= digit && digit <= 'f')
  *value = digit - 'a' + 10;
 else
  return 0;

 return 1;
}
