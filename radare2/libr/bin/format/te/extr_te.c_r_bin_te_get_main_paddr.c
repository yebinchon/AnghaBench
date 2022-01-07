
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef long long ut64 ;
struct r_bin_te_obj_t {int b; } ;
typedef int buf ;
struct TYPE_4__ {long long vaddr; int paddr; } ;
typedef TYPE_1__ RBinAddr ;


 long long UT64_MAX ;
 int eprintf (char*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* r_bin_te_get_entrypoint (struct r_bin_te_obj_t*) ;
 int r_buf_read_at (int ,int ,int*,int) ;

ut64 r_bin_te_get_main_paddr(struct r_bin_te_obj_t *bin) {
 RBinAddr *entry = r_bin_te_get_entrypoint (bin);
 ut64 addr = 0LL;
 ut8 buf[512];
 if (!bin) {
  return 0LL;
 }
 if (r_buf_read_at (bin->b, entry->paddr, buf, sizeof (buf)) == -1) {
  eprintf ("Error: read (entry)\n");
 } else {
  if (buf[367] == 0xe8) {
   int delta = (buf[368] | buf[369]<<8 | buf[370]<<16 | buf[371]<<24);
   delta += 367 + 5;
   addr = entry->vaddr;
   if (delta >= (UT64_MAX - addr)) {
    free (entry);
    return UT64_MAX;
   }
   addr += delta;
  }
 }
 free (entry);
 return addr;
}
