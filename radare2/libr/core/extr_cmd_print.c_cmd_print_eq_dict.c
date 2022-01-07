
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int RCore ;


 int r_cons_printf (char*,int,int) ;

__attribute__((used)) static void cmd_print_eq_dict(RCore *core, const ut8 *block, int bsz) {
 int i;
 int min = -1;
 int max = 0;
 int dict = 0;
 int range = 0;
 bool histogram[256] = {0};
 for (i = 0; i < bsz; i++) {
  histogram[block[i]] = 1;
 }
 for (i = 0; i < 256; i++) {
  if (histogram[i]) {
   if (min == -1) {
    min = i;
   }
   max = i;
   dict++;
  }
 }
 range = max - min;
 r_cons_printf ("min:              %d  0x%x\n", min, min);
 r_cons_printf ("max:              %d  0x%x\n", max, max);
 r_cons_printf ("unique (count):   %d  0x%x\n", dict, dict);
 r_cons_printf ("range (max-min):  %d  0x%x\n", range, range);
 r_cons_printf ("size (of block):  %d  0x%x\n", bsz, bsz);
}
