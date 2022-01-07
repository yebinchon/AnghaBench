
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int BIT (int ,int const) ;

__attribute__((used)) static int extract_inputs(ut32 val, const int *inputs) {
 int i, res = 0;
 for (i = 0; i < 6; ++i) {
  if (inputs[i] != -1) {
   res |= BIT (val, inputs[i]) << i;
  }
 }
 return res;
}
