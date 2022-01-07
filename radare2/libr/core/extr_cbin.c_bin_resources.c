
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rclass; } ;
struct TYPE_7__ {int bin; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RBinInfo ;


 int bin_no_resources (TYPE_1__*,int) ;
 int bin_pe_resources (TYPE_1__*,int) ;
 TYPE_2__* r_bin_get_info (int ) ;
 int strncmp (char*,int ,int) ;

__attribute__((used)) static int bin_resources(RCore *r, int mode) {
 const RBinInfo *info = r_bin_get_info (r->bin);
 if (!info || !info->rclass) {
  return 0;
 }
 if (!strncmp ("pe", info->rclass, 2)) {
  bin_pe_resources (r, mode);
 } else {
  bin_no_resources (r, mode);
 }
 return 1;
}
