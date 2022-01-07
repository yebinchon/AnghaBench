
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int data ;
typedef int RBuffer ;


 int r_buf_write_at (int *,int ,int *,int) ;

__attribute__((used)) static int r_bin_dyldcache_apply_patch(RBuffer* buf, ut32 data, ut64 offset) {
 return r_buf_write_at (buf, offset, (ut8 *)&data, sizeof (data));
}
