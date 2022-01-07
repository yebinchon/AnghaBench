
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
struct TYPE_3__ {int length; scalar_t__* pattern_bytes; int * variant_bool_array; } ;
typedef TYPE_1__ RFlirtNode ;



__attribute__((used)) static int node_pattern_match(const RFlirtNode *node, ut8 *b, int buf_size) {
 int i;
 for (i = 0; i < node->length; i++) {
  if (!node->variant_bool_array[i]) {
   if (i < node->length && node->pattern_bytes[i] != b[i]) {
    return 0;
   }
  }
 }
 return 1;
}
