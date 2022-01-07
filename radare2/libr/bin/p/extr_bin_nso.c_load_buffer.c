
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int sdb; int loadaddr; } ;
typedef int Sdb ;
typedef int RBuffer ;
typedef TYPE_1__ RBinFile ;


 int load_bytes (TYPE_1__*,void**,int const*,int ,int const,int ) ;
 int * r_buf_data (int *,int *) ;
 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static bool load_buffer(RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 r_return_val_if_fail (bf && buf, ((void*)0));
 const ut64 la = bf->loadaddr;
 ut64 sz = 0;
 const ut8 *bytes = r_buf_data (buf, &sz);
 return load_bytes (bf, bin_obj, bytes, sz, la, bf->sdb);
}
