
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
struct TYPE_6__ {TYPE_1__ val; } ;
struct TYPE_5__ {scalar_t__ type_info; } ;
typedef TYPE_2__ STypeInfo ;
typedef TYPE_3__ SLF_ONEMETHOD ;



__attribute__((used)) static void get_onemethod_val(void *type, int *res) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_ONEMETHOD *lf = (SLF_ONEMETHOD *) t->type_info;

 *res = lf->val.val;
}
