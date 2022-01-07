
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int printf (char*,...) ;

__attribute__((used)) static void do_hash_hexprint(const ut8 *c, int len, int ule, int rad) {
 int i;
 if (ule) {
  for (i = len - 1; i >= 0; i--) {
   printf ("%02x", c[i]);
  }
 } else {
  for (i = 0; i < len; i++) {
   printf ("%02x", c[i]);
  }
 }
 if (rad != 'j') {
  printf ("\n");
 }
}
