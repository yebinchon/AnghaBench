
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int rclass; } ;
struct TYPE_8__ {int bin; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RBinInfo ;


 int bin_elf_versioninfo (TYPE_1__*,int) ;
 int bin_mach0_versioninfo (TYPE_1__*) ;
 int bin_pe_versioninfo (TYPE_1__*,int) ;
 TYPE_2__* r_bin_get_info (int ) ;
 int r_cons_println (char*) ;
 int strncmp (char*,int ,int) ;

__attribute__((used)) static int bin_versioninfo(RCore *r, int mode) {
 const RBinInfo *info = r_bin_get_info (r->bin);
 if (!info || !info->rclass) {
  return 0;
 }
 if (!strncmp ("pe", info->rclass, 2)) {
  bin_pe_versioninfo (r, mode);
 } else if (!strncmp ("elf", info->rclass, 3)) {
  bin_elf_versioninfo (r, mode);
 } else if (!strncmp ("mach0", info->rclass, 5)) {
  bin_mach0_versioninfo (r);
 } else {
  r_cons_println ("Unknown format");
  return 0;
 }
 return 1;
}
