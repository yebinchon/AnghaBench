
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;


 void* r_bin_internal_omf_load (int const*,int ) ;
 int * r_buf_data (int *,int *) ;
 int r_return_val_if_fail (int const*,int) ;

__attribute__((used)) static bool load_buffer (RBinFile *bf, void **bin_obj, RBuffer *b, ut64 loadaddr, Sdb *sdb) {
 ut64 size;
 const ut8 *buf = r_buf_data (b, &size);
 r_return_val_if_fail (buf, 0);
 *bin_obj = r_bin_internal_omf_load (buf, size);
 return *bin_obj != ((void*)0);
}
