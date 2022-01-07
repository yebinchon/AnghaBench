
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;
typedef scalar_t__ st8 ;
typedef int RBuffer ;
typedef int ConsumeFcn ;


 int consume_r (int *,int ,size_t*,int ) ;
 scalar_t__ read_i32_leb128 ;

__attribute__((used)) static size_t consume_s7_r (RBuffer *b, ut64 max, st8 *out) {
 size_t n;
 ut32 tmp = consume_r (b, max, &n, (ConsumeFcn)read_i32_leb128);
 if (out) {
  *out = (st8) (((tmp & 0x10000000) << 7) | (tmp & 0x7f));
 }
 return n;
}
