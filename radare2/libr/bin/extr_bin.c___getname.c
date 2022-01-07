
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* (* get_name ) (int *,int,int,int) ;} ;
typedef TYPE_1__ RBinPlugin ;
typedef int RBinFile ;
typedef int RBin ;


 int * r_bin_cur (int *) ;
 TYPE_1__* r_bin_file_cur_plugin (int *) ;
 char const* stub1 (int *,int,int,int) ;

__attribute__((used)) static const char *__getname(RBin *bin, int type, int idx, bool sd) {
 RBinFile *a = r_bin_cur (bin);
 RBinPlugin *plugin = r_bin_file_cur_plugin (a);
 if (plugin && plugin->get_name) {
  return plugin->get_name (a, type, idx, sd);
 }
 return ((void*)0);
}
