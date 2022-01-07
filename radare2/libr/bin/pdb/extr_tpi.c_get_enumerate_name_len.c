
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int enum_value; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_ENUMERATE ;


 int get_sval_name_len (int *,int*) ;

__attribute__((used)) static void get_enumerate_name_len(void *type, int *res_len) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_ENUMERATE *lf = (SLF_ENUMERATE *)t->type_info;

 get_sval_name_len(&lf->enum_value, res_len);
}
