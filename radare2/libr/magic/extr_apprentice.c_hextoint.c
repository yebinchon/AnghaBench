
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int isascii (int ) ;
 scalar_t__ isdigit (int ) ;

__attribute__((used)) static int hextoint(int c) {
 if (!isascii ((ut8)c)) {
  return -1;
 }
 if (isdigit ((ut8)c)) {
  return c - '0';
 }
 if ((c >= 'a') && (c <= 'f')) {
  return c + 10 - 'a';
 }
 if ((c >= 'A') && (c <= 'F')) {
  return c + 10 - 'A';
 }
 return -1;
}
