
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int length; void* variant_mask; } ;
typedef TYPE_1__ RFlirtNode ;
typedef int RBuffer ;


 scalar_t__ buf_eof ;
 scalar_t__ buf_err ;
 void* read_max_2_bytes (int *) ;
 void* read_multiple_bytes (int *) ;

__attribute__((used)) static ut8 read_node_variant_mask(RFlirtNode *node, RBuffer *b) {



 if (node->length < 0x10) {
  node->variant_mask = read_max_2_bytes (b);
  if (buf_eof || buf_err) {
   return 0;
  }
 } else if (node->length <= 0x20) {
  node->variant_mask = read_multiple_bytes (b);
  if (buf_eof || buf_err) {
   return 0;
  }
 } else if (node->length <= 0x40) {
  node->variant_mask = ((ut64)read_multiple_bytes (b) << 32) + read_multiple_bytes (b);
  if (buf_eof || buf_err) {
   return 0;
  }
 }

 return 1;
}
