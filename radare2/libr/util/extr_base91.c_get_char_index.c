
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* b91 ;

int get_char_index(const char c) {
 int i;
 for (i = 0; i < 91; i++ ) {
  if (b91[i] == c) {
   return i;
  }
 }
 return -1;
}
