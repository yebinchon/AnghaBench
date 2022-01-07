
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int length; int* pattern_bytes; int* variant_bool_array; int variant_mask; } ;
typedef TYPE_1__ RFlirtNode ;
typedef int RBuffer ;


 scalar_t__ buf_eof ;
 scalar_t__ buf_err ;
 void* malloc (int) ;
 int read_byte (int *) ;

__attribute__((used)) static bool read_node_bytes(RFlirtNode *node, RBuffer *b) {


 int i;
 ut64 current_mask_bit = 0;
 if ((int) node->length < 0) {
  return 0;
 }
 current_mask_bit = 1ULL << (node->length - 1);
 if (!(node->pattern_bytes = malloc (node->length))) {
  return 0;
 }
 if (!(node->variant_bool_array = malloc (node->length))) {
  return 0;
 }
 for (i = 0; i < node->length; i++, current_mask_bit >>= 1) {
  node->variant_bool_array[i] =
   (node->variant_mask & current_mask_bit)? 1: 0;
  if (node->variant_mask & current_mask_bit) {
   node->pattern_bytes[i] = 0x00;
  } else {
   node->pattern_bytes[i] = read_byte (b);
   if (buf_eof || buf_err) {
    return 0;
   }
  }
 }
 return 1;
}
