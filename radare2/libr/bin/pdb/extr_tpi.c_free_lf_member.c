
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


 int free_sval (int *) ;

__attribute__((used)) static void free_lf_member(void *type_info) {
 STypeInfo *typeInfo = (STypeInfo *) type_info;
 SLF_MEMBER *lf_mem = (SLF_MEMBER *) typeInfo->type_info;
 free_sval (&lf_mem->offset);
}
