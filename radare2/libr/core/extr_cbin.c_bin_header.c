
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* header ) (int *) ;} ;
struct TYPE_5__ {int bin; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RBinPlugin ;
typedef int RBinFile ;


 int * r_bin_cur (int ) ;
 TYPE_2__* r_bin_file_cur_plugin (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static int bin_header(RCore *r, int mode) {
 RBinFile *cur = r_bin_cur (r->bin);
 RBinPlugin *plg = r_bin_file_cur_plugin (cur);
 if (plg && plg->header) {
  plg->header (cur);
  return 1;
 }
 return 0;
}
