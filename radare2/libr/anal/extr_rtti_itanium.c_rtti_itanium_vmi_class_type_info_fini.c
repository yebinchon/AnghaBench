
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int vmi_bases; } ;
typedef TYPE_1__ vmi_class_type_info ;


 int free (int ) ;

__attribute__((used)) static void rtti_itanium_vmi_class_type_info_fini (vmi_class_type_info *vmi_cti) {
 if (vmi_cti) {
  free (vmi_cti->vmi_bases);
  free (vmi_cti->name);
 }
}
