
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_10__ {int vt_context; int addr_td; int type_descriptors; } ;
struct TYPE_9__ {int * col; int valid; int td; int addr; } ;
typedef TYPE_1__ RecoveryTypeDescriptor ;
typedef int RecoveryCompleteObjectLocator ;
typedef TYPE_2__ RRTTIMSVCAnalContext ;


 TYPE_1__* ht_up_find (int ,int ,int *) ;
 int ht_up_insert (int ,int ,TYPE_1__*) ;
 int r_pvector_push (int *,TYPE_1__*) ;
 TYPE_1__* recovery_type_descriptor_new () ;
 int rtti_msvc_read_type_descriptor (int ,int ,int *) ;

RecoveryTypeDescriptor *recovery_anal_type_descriptor(RRTTIMSVCAnalContext *context, ut64 addr, RecoveryCompleteObjectLocator *col) {
 RecoveryTypeDescriptor *td = ht_up_find (context->addr_td, addr, ((void*)0));
 if (td) {
  if (col != ((void*)0)) {
   td->col = col;
  }
  return td;
 }

 td = recovery_type_descriptor_new ();
 if (!td) {
  return ((void*)0);
 }
 r_pvector_push (&context->type_descriptors, td);
 ht_up_insert (context->addr_td, addr, td);
 td->addr = addr;
 td->valid = rtti_msvc_read_type_descriptor (context->vt_context, addr, &td->td);
 if (!td->valid) {
  return td;
 }

 td->col = col;

 return td;
}
