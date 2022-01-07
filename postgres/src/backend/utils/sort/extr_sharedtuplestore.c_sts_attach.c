
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nparticipants; } ;
struct TYPE_6__ {int participant; int context; int * fileset; TYPE_2__* sts; } ;
typedef TYPE_1__ SharedTuplestoreAccessor ;
typedef TYPE_2__ SharedTuplestore ;
typedef int SharedFileSet ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 TYPE_1__* palloc0 (int) ;

SharedTuplestoreAccessor *
sts_attach(SharedTuplestore *sts,
     int my_participant_number,
     SharedFileSet *fileset)
{
 SharedTuplestoreAccessor *accessor;

 Assert(my_participant_number < sts->nparticipants);

 accessor = palloc0(sizeof(SharedTuplestoreAccessor));
 accessor->participant = my_participant_number;
 accessor->sts = sts;
 accessor->fileset = fileset;
 accessor->context = CurrentMemoryContext;

 return accessor;
}
