
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int fprintf (int ,char*,int) ;
 int stderr ;
 char* strdup (char*) ;

char *get_tc2_tc1(ut32 ins_bits) {
 char *res = "tc1";
 if (ins_bits) {
  if (ins_bits != 1) {
   fprintf(stderr, "Invalid instruction TC2 or TC1 (%d)\n", ins_bits);
   return ((void*)0);
  }
  res = "tc2";
 }
 return strdup (res);
}
