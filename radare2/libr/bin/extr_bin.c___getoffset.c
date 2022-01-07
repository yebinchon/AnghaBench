
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_offset ) (int *,int,int) ;} ;
typedef TYPE_1__ RBinPlugin ;
typedef int RBinFile ;
typedef int RBin ;


 int * r_bin_cur (int *) ;
 TYPE_1__* r_bin_file_cur_plugin (int *) ;
 int stub1 (int *,int,int) ;

__attribute__((used)) static int __getoffset(RBin *bin, int type, int idx) {
 RBinFile *a = r_bin_cur (bin);
 RBinPlugin *plugin = r_bin_file_cur_plugin (a);
 if (plugin && plugin->get_offset) {
  return plugin->get_offset (a, type, idx);
 }
 return -1;
}
