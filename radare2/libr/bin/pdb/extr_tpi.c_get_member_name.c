
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_MEMBER ;


 int get_sval_name (int *,char**) ;

__attribute__((used)) static void get_member_name(void *type, char **name) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_MEMBER *lf = (SLF_MEMBER *)t->type_info;

 get_sval_name(&lf->offset, name);
}
