
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* eohptr; } ;
typedef TYPE_1__ varatt_expanded ;
typedef int ptr ;
struct TYPE_6__ {int eoh_ro_ptr; int eoh_rw_ptr; int eoh_context; int const* eoh_methods; int vl_len_; } ;
typedef int MemoryContext ;
typedef int ExpandedObjectMethods ;
typedef TYPE_2__ ExpandedObjectHeader ;


 int EOH_HEADER_MAGIC ;
 int SET_VARTAG_EXTERNAL (int ,int ) ;
 int VARDATA_EXTERNAL (int ) ;
 int VARTAG_EXPANDED_RO ;
 int VARTAG_EXPANDED_RW ;
 int memcpy (int ,TYPE_1__*,int) ;

void
EOH_init_header(ExpandedObjectHeader *eohptr,
    const ExpandedObjectMethods *methods,
    MemoryContext obj_context)
{
 varatt_expanded ptr;

 eohptr->vl_len_ = EOH_HEADER_MAGIC;
 eohptr->eoh_methods = methods;
 eohptr->eoh_context = obj_context;

 ptr.eohptr = eohptr;

 SET_VARTAG_EXTERNAL(eohptr->eoh_rw_ptr, VARTAG_EXPANDED_RW);
 memcpy(VARDATA_EXTERNAL(eohptr->eoh_rw_ptr), &ptr, sizeof(ptr));

 SET_VARTAG_EXTERNAL(eohptr->eoh_ro_ptr, VARTAG_EXPANDED_RO);
 memcpy(VARDATA_EXTERNAL(eohptr->eoh_ro_ptr), &ptr, sizeof(ptr));
}
