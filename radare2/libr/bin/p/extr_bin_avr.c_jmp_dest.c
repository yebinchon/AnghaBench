
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RBuffer ;


 int r_buf_read8_at (int *,int) ;

__attribute__((used)) static ut64 jmp_dest(RBuffer* b, ut64 addr) {
 return (r_buf_read8_at (b, addr + 2) + (r_buf_read8_at (b, addr + 3) << 8)) * 2;
}
