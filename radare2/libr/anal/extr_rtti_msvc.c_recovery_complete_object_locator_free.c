
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base_td; int bcd; } ;
typedef TYPE_1__ RecoveryCompleteObjectLocator ;


 int free (TYPE_1__*) ;
 int r_list_free (int ) ;
 int r_vector_clear (int *) ;

void recovery_complete_object_locator_free(RecoveryCompleteObjectLocator *col) {
 if (!col) {
  return;
 }
 r_list_free (col->bcd);
 r_vector_clear (&col->base_td);
 free (col);
}
