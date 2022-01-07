
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 int r_read_le32 (int *) ;

__attribute__((used)) static ut64 extract_addr_from_code(ut8 *arm64_code, ut64 vaddr) {
 ut64 addr = vaddr & ~0xfff;

 ut64 adrp = r_read_le32 (arm64_code);
 ut64 adrp_offset = ((adrp & 0x60000000) >> 29) | ((adrp & 0xffffe0) >> 3);
 addr += adrp_offset << 12;

 ut64 ldr = r_read_le32 (arm64_code + 4);
 addr += ((ldr & 0x3ffc00) >> 10) << ((ldr & 0xc0000000) >> 30);

 return addr;
}
