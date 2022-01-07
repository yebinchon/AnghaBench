
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long ut64 ;


 int R_HASH_NBITS ;
 int r_cons_newline () ;
 int r_cons_printf (char*,char const*) ;
 int r_cons_println (char const*) ;
 char* r_hash_name (unsigned long long) ;

__attribute__((used)) static void algolist(int mode) {
 int i;
 for (i = 0; i < R_HASH_NBITS; i++) {
  ut64 bits = 1ULL << i;
  const char *name = r_hash_name (bits);
  if (name && *name) {
   if (mode) {
    r_cons_println (name);
   } else {
    r_cons_printf ("%s ", name);
   }
  }
 }
 if (!mode) {
  r_cons_newline ();
 }
}
