
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hex2int(int ch) {
 if (ch >= 'a' && ch <= 'f') {
  return ch - 'a' + 10;
 }
 if (ch >= 'A' && ch <= 'F') {
  return ch - 'A' + 10;
 }
 if (ch >= '0' && ch <= '9') {
  return ch - '0';
 }
 return -1;
}
