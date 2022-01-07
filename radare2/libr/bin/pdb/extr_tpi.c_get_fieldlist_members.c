
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * substructs; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_FIELDLIST ;
typedef int RList ;



__attribute__((used)) static void get_fieldlist_members(void *type, RList **l) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_FIELDLIST *lf_fieldlist = (SLF_FIELDLIST *) t->type_info;

 *l = lf_fieldlist->substructs;
}
