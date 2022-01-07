
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int RBuffer ;


 int consume_r (int *,int ,size_t*,int ) ;
 int read_u32_leb128 ;

__attribute__((used)) static size_t consume_u1_r (RBuffer *b, ut64 max, ut8 *out) {
 size_t n;
 ut32 tmp = consume_r (b, max, &n, read_u32_leb128);
 if (out) {
  *out = (ut8) (tmp & 0x1);
 }
 return n;
}
