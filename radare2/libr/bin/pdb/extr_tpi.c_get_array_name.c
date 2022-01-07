
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_ARRAY ;


 int get_sval_name (int *,char**) ;

__attribute__((used)) static void get_array_name(void *type, char **name) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_ARRAY *lf_array = (SLF_ARRAY *) t->type_info;

 get_sval_name(&lf_array->size, name);
}
