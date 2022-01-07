
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int ut8 ;
typedef int ut32 ;
typedef int RBuffer ;


 int r_buf_write_at (int *,int ,void*,int) ;
 int r_write_le32 (int *,int ) ;

__attribute__((used)) static void __patch_reloc(RBuffer *buf, ut32 addr_to_patch, ut32 data_offset) {
 ut8 val[4] = {
  0
 };
 r_write_le32 (val, data_offset);
 r_buf_write_at (buf, addr_to_patch, (void *) val, sizeof (val));
}
