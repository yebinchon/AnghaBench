
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {int nparticipants; size_t meta_data_size; int flags; TYPE_1__* participants; int name; } ;
struct TYPE_8__ {int participant; int context; int * fileset; TYPE_3__* sts; } ;
struct TYPE_7__ {int writing; scalar_t__ read_page; int lock; } ;
typedef TYPE_2__ SharedTuplestoreAccessor ;
typedef TYPE_3__ SharedTuplestore ;
typedef int SharedFileSet ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 int ERROR ;
 int LWLockInitialize (int *,int ) ;
 int LWTRANCHE_SHARED_TUPLESTORE ;
 size_t STS_CHUNK_DATA_SIZE ;
 int elog (int ,char*) ;
 TYPE_2__* palloc0 (int) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

SharedTuplestoreAccessor *
sts_initialize(SharedTuplestore *sts, int participants,
      int my_participant_number,
      size_t meta_data_size,
      int flags,
      SharedFileSet *fileset,
      const char *name)
{
 SharedTuplestoreAccessor *accessor;
 int i;

 Assert(my_participant_number < participants);

 sts->nparticipants = participants;
 sts->meta_data_size = meta_data_size;
 sts->flags = flags;

 if (strlen(name) > sizeof(sts->name) - 1)
  elog(ERROR, "SharedTuplestore name too long");
 strcpy(sts->name, name);







 if (meta_data_size + sizeof(uint32) >= STS_CHUNK_DATA_SIZE)
  elog(ERROR, "meta-data too long");

 for (i = 0; i < participants; ++i)
 {
  LWLockInitialize(&sts->participants[i].lock,
       LWTRANCHE_SHARED_TUPLESTORE);
  sts->participants[i].read_page = 0;
  sts->participants[i].writing = 0;
 }

 accessor = palloc0(sizeof(SharedTuplestoreAccessor));
 accessor->participant = my_participant_number;
 accessor->sts = sts;
 accessor->fileset = fileset;
 accessor->context = CurrentMemoryContext;

 return accessor;
}
