
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static bool check_arg(ut32 ins_bits, int *err_code) {
 bool res = 0;

 if ((ins_bits <= 31) | (ins_bits >= 128 && ins_bits < 160)) {
  res = 1;
 } else if (ins_bits >= 32 && ins_bits <= 252) {
  res = 0;
 } else {
  fprintf(stderr, "Invalid arg: %u\n", ins_bits);
  *err_code = -1;
 }

 return res;
}
