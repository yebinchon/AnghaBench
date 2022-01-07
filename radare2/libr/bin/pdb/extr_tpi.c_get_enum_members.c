
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ field_list; } ;
struct TYPE_9__ {int * substructs; } ;
struct TYPE_6__ {scalar_t__ type_info; } ;
struct TYPE_8__ {TYPE_1__ type_data; } ;
struct TYPE_7__ {scalar_t__ type_info; } ;
typedef TYPE_2__ STypeInfo ;
typedef TYPE_3__ SType ;
typedef TYPE_4__ SLF_FIELDLIST ;
typedef TYPE_5__ SLF_ENUM ;
typedef int RList ;


 unsigned int base_idx ;
 int p_types_list ;
 scalar_t__ r_list_get_n (int ,unsigned int) ;

__attribute__((used)) static void get_enum_members(void *type, RList **l) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_ENUM *lf = (SLF_ENUM *) t->type_info;
 unsigned int indx = 0;

 if (lf->field_list == 0) {
  *l = 0;
 } else {
  SType *tmp = 0;
  indx = lf->field_list - base_idx;
  tmp = (SType *)r_list_get_n(p_types_list, indx);
  *l = ((SLF_FIELDLIST *) tmp->type_data.type_info)->substructs;
 }
}
