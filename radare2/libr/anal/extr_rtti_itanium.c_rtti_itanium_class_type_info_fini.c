
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ class_type_info ;


 int free (int ) ;

__attribute__((used)) static void rtti_itanium_class_type_info_fini (class_type_info *cti) {
 if (cti) {
  free (cti->name);
 }
}
