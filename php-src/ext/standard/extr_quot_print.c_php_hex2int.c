
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (int) ;

__attribute__((used)) static char php_hex2int(int c)
{
 if (isdigit(c)) {
  return c - '0';
 }
 else if (c >= 'A' && c <= 'F') {
  return c - 'A' + 10;
 }
 else if (c >= 'a' && c <= 'f') {
  return c - 'a' + 10;
 }
 else {
  return -1;
 }
}
