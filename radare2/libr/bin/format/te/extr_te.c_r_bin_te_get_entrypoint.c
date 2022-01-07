
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r_bin_te_obj_t {TYPE_1__* header; } ;
struct TYPE_6__ {scalar_t__ vaddr; int paddr; } ;
struct TYPE_5__ {scalar_t__ AddressOfEntryPoint; scalar_t__ ImageBase; } ;
typedef TYPE_2__ RBinAddr ;


 TYPE_2__* malloc (int) ;
 int perror (char*) ;
 scalar_t__ r_bin_te_get_stripped_delta (struct r_bin_te_obj_t*) ;
 int r_bin_te_vaddr_to_paddr (struct r_bin_te_obj_t*,scalar_t__) ;

RBinAddr* r_bin_te_get_entrypoint(struct r_bin_te_obj_t* bin) {
 RBinAddr *entry = ((void*)0);

 if (!bin || !bin->header) {
  return ((void*)0);
 }
 if (!(entry = malloc (sizeof (RBinAddr)))) {
  perror("malloc (entrypoint)");
  return ((void*)0);
 }
 entry->vaddr = bin->header->AddressOfEntryPoint - r_bin_te_get_stripped_delta (bin);
 if (entry->vaddr == 0) {
  entry->vaddr = bin->header->ImageBase;
 }
 entry->paddr = r_bin_te_vaddr_to_paddr (bin, entry->vaddr);
 return entry;
}
