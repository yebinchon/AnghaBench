
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
typedef TYPE_1__ SERIALIZABLEXACT ;


 int Assert (int) ;
 TYPE_1__* OldCommittedSxact ;
 int OnConflict_CheckForSerializationFailure (TYPE_1__*,TYPE_1__*) ;
 int SXACT_FLAG_SUMMARY_CONFLICT_IN ;
 int SXACT_FLAG_SUMMARY_CONFLICT_OUT ;
 int SetRWConflict (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
FlagRWConflict(SERIALIZABLEXACT *reader, SERIALIZABLEXACT *writer)
{
 Assert(reader != writer);


 OnConflict_CheckForSerializationFailure(reader, writer);


 if (reader == OldCommittedSxact)
  writer->flags |= SXACT_FLAG_SUMMARY_CONFLICT_IN;
 else if (writer == OldCommittedSxact)
  reader->flags |= SXACT_FLAG_SUMMARY_CONFLICT_OUT;
 else
  SetRWConflict(reader, writer);
}
