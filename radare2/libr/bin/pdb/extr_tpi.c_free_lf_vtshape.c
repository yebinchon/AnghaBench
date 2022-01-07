
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vt_descriptors; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_VTSHAPE ;


 int free (scalar_t__) ;

__attribute__((used)) static void free_lf_vtshape(void *type) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_VTSHAPE *lf_vtshape = (SLF_VTSHAPE *) t->type_info;
 free (lf_vtshape->vt_descriptors);
 lf_vtshape->vt_descriptors = 0;
}
