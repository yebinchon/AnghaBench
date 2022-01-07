
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_dex_obj_t {int dummy; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {struct r_bin_dex_obj_t* bin_obj; } ;
typedef TYPE_2__ RBinFile ;


 char* dex_class_name_byid (struct r_bin_dex_obj_t*,int) ;
 char* dex_field_name (struct r_bin_dex_obj_t*,int) ;
 char* dex_get_proto (struct r_bin_dex_obj_t*,int) ;
 char* dex_method_fullname (struct r_bin_dex_obj_t*,int) ;
 int simplifiedDemangling ;

__attribute__((used)) static char *getname(RBinFile *bf, int type, int idx, bool sd) {
 simplifiedDemangling = sd;
 struct r_bin_dex_obj_t *dex = bf->o->bin_obj;
 switch (type) {
 case 'm':
  return dex_method_fullname (dex, idx);
 case 'c':
  return dex_class_name_byid (dex, idx);
 case 'f':
  return dex_field_name (dex, idx);
 case 'p':
  return dex_get_proto (dex, idx);
 }
 return ((void*)0);
}
