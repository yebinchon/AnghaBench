
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ arg_type; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_ARGLIST ;


 int free (scalar_t__) ;

__attribute__((used)) static void free_lf_arglist(void *type) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_ARGLIST *lf_arglist = (SLF_ARGLIST *) t->type_info;
 free (lf_arglist->arg_type);
 lf_arglist->arg_type = 0;
}
