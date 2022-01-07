
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RBuffer ;


 int r_buf_read8_at (int *,scalar_t__) ;

__attribute__((used)) static bool jmp(RBuffer* b, ut64 addr) {
 return (r_buf_read8_at (b, addr) == 0x0c) && (r_buf_read8_at (b, addr + 1) == 0x94);
}
