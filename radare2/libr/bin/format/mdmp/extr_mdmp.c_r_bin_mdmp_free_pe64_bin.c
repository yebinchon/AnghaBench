
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Pe64_r_bin_mdmp_pe_bin {TYPE_1__* bin; } ;
struct TYPE_2__ {int kv; } ;


 int Pe64_r_bin_pe_free (TYPE_1__*) ;
 int R_FREE (struct Pe64_r_bin_mdmp_pe_bin*) ;
 int sdb_free (int ) ;

__attribute__((used)) static void r_bin_mdmp_free_pe64_bin(void *pe_bin_) {
 struct Pe64_r_bin_mdmp_pe_bin *pe_bin = pe_bin_;
 if (pe_bin) {
  sdb_free (pe_bin->bin->kv);
  Pe64_r_bin_pe_free (pe_bin->bin);
  R_FREE (pe_bin);
 }
}
