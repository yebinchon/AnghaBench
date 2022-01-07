
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;



__attribute__((used)) static bool is_linear_circular(ut32 ins_bits) {
 ut8 op, op2, op3;
 op = (ins_bits >> 6) | 16 * (ins_bits & 3);
 op2 = (ins_bits >> 2) & 0xF;
 op3 = op2 & 0xF;
 return (op == 26 || op == 30 || (op3 > 7 && op3 != 15));
}
