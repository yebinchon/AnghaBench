
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;


 scalar_t__ UT64_MAX ;
 scalar_t__ check_buffer (int *) ;
 void* r_bin_wasm_init (int *,int *) ;
 scalar_t__ r_buf_size (int *) ;
 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static bool load_buffer (RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 r_return_val_if_fail (bf && buf && r_buf_size (buf) != UT64_MAX, ((void*)0));

 if (check_buffer (buf)) {
  *bin_obj = r_bin_wasm_init (bf, buf);
  return 1;
 }
 return 0;
}
