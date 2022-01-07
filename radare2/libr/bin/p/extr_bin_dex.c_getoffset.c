
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int strings_size; } ;
struct r_bin_dex_obj_t {int* strings; TYPE_2__ header; } ;
struct TYPE_9__ {TYPE_1__* o; } ;
struct TYPE_7__ {struct r_bin_dex_obj_t* bin_obj; } ;
typedef TYPE_3__ RBinFile ;


 int dex_field_offset (struct r_bin_dex_obj_t*,int) ;
 int dex_get_type_offset (TYPE_3__*,int) ;
 int eprintf (char*) ;
 int offset_of_method_idx (TYPE_3__*,struct r_bin_dex_obj_t*,int) ;

__attribute__((used)) static int getoffset(RBinFile *bf, int type, int idx) {
 struct r_bin_dex_obj_t *dex = bf->o->bin_obj;
 switch (type) {
 case 'm':

  return offset_of_method_idx (bf, dex, idx);
 case 'f':
  return dex_field_offset (dex, idx);
 case 'o':
  eprintf ("TODO: getoffset object\n");
  return 0;
 case 's':
  if (dex->header.strings_size > idx) {
   if (dex->strings) {
    return dex->strings[idx];
   }
  }
  break;
 case 't':
  return dex_get_type_offset (bf, idx);
 case 'c':
  return dex_get_type_offset (bf, idx);
 }
 return -1;
}
