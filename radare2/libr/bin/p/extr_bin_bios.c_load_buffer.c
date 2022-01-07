
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;


 int check_buffer (int *) ;
 void* r_buf_ref (int *) ;

__attribute__((used)) static bool load_buffer(RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 if (!check_buffer (buf)) {
  return 0;
 }
 *bin_obj = r_buf_ref (buf);
 return 1;
}
