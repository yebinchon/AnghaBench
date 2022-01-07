
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut32 ;



__attribute__((used)) static void Decode(ut32 *output, const ut8 *input, ut32 len) {
 ut32 i, j;
 for (i = 0, j = 0; j < len; i++, j += 4) {
  output[i] = ((ut32)input[j]) | (((ut32)input[j + 1]) << 8) |
       (((ut32)input[j + 2]) << 16) |
       (((ut32)input[j + 3]) << 24);
 }
}
