
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbox {int* table; int* outputs; int inputs; } ;
struct optimised_sbox {int* output; int * input_lookup; } ;


 int extract_inputs (int,int ) ;

__attribute__((used)) static void optimise_sboxes(struct optimised_sbox* out, const struct sbox* in) {
 int i, box;

 for (box = 0; box < 4; ++box) {

  for (i = 0; i < 256; ++i) {
   out[box].input_lookup[i] = extract_inputs(i, in[box].inputs);
  }

  for (i = 0; i < 64; ++i) {
   int o = in[box].table[i];
   out[box].output[i] = 0;
   if (o & 1) {
    out[box].output[i] |= 1 << in[box].outputs[0];
   }
   if (o & 2) {
    out[box].output[i] |= 1 << in[box].outputs[1];
   }
  }
 }
}
