
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
struct TYPE_6__ {TYPE_1__ str_data; } ;
struct TYPE_8__ {TYPE_2__ val; } ;
struct TYPE_7__ {scalar_t__ type_info; } ;
typedef TYPE_3__ STypeInfo ;
typedef TYPE_4__ SLF_ONEMETHOD ;



__attribute__((used)) static void get_onemethod_name_len(void *type, int *res_len) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_ONEMETHOD *lf_onemethod = (SLF_ONEMETHOD *)t->type_info;

 *res_len = lf_onemethod->val.str_data.size;
}
