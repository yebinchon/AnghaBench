
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RBuffer ;


 int r_buf_read8_at (int *,int) ;

__attribute__((used)) static ut64 rjmp_dest(ut64 addr, RBuffer* b) {
 ut64 dst = 2 + addr + r_buf_read8_at (b, addr) * 2;
 dst += ((r_buf_read8_at (b, addr + 1) & 0xf) * 2) << 8;
 return dst;
}
