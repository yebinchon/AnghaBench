
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {TYPE_1__* rbin; } ;
struct TYPE_4__ {int verbose; } ;
typedef int Sdb ;
typedef int RBuffer ;
typedef TYPE_2__ RBinFile ;


 void* r_bin_coff_new_buf (int *,int ) ;

__attribute__((used)) static bool load_buffer(RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 *bin_obj = r_bin_coff_new_buf (buf, bf->rbin->verbose);
 return *bin_obj != ((void*)0);
}
