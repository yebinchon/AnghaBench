
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char encode_digit(int c) {

 if (c > 25) {
  return c + 22;
 }
 return c + 'a';
}
