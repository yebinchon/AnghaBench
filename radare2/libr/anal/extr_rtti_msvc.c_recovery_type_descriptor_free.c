
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int td; } ;
typedef TYPE_1__ RecoveryTypeDescriptor ;


 int free (TYPE_1__*) ;
 int rtti_type_descriptor_fini (int *) ;

void recovery_type_descriptor_free(RecoveryTypeDescriptor *td) {
 if (!td) {
  return;
 }
 rtti_type_descriptor_fini (&td->td);
 free (td);
}
