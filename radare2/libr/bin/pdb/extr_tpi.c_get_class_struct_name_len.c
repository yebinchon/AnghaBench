
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_STRUCTURE ;


 int get_sval_name_len (int *,int*) ;

__attribute__((used)) static void get_class_struct_name_len(void *type, int *res_len) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_STRUCTURE *lf = (SLF_STRUCTURE *)t->type_info;

 get_sval_name_len(&lf->size, res_len);
}
