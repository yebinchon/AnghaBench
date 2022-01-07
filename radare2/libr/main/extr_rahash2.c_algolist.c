
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long ut64 ;


 unsigned long long R_HASH_NBITS ;
 int printf (char*,...) ;
 char* r_crypto_name (unsigned long long) ;
 char* r_hash_name (unsigned long long) ;

__attribute__((used)) static void algolist() {
 ut64 bits;
 ut64 i;
 for (i = 0; i < R_HASH_NBITS; i++) {
  bits = 1ULL << i;
  const char *name = r_hash_name (bits);
  if (name && *name) {
   printf ("h  %s\n", name);
  }
 }

 printf ("e  base64\n");
 printf ("e  base91\n");
 printf ("e  punycode\n");
 for (i = 0;; i++) {
  bits = ((ut64) 1) << i;
  const char *name = r_crypto_name (bits);
  if (!name || !*name) {
   break;
  }
  printf ("c  %s\n", name);
 }
}
