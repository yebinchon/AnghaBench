
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ pubdelete; scalar_t__ pubupdate; } ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relreplident; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ PublicationActions ;
typedef scalar_t__ CmdType ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_UPDATE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 TYPE_3__* GetRelationPublicationActions (TYPE_2__*) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetReplicaIndex (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;

void
CheckCmdReplicaIdentity(Relation rel, CmdType cmd)
{
 PublicationActions *pubactions;


 if (cmd != CMD_UPDATE && cmd != CMD_DELETE)
  return;


 if (rel->rd_rel->relreplident == REPLICA_IDENTITY_FULL ||
  OidIsValid(RelationGetReplicaIndex(rel)))
  return;






 pubactions = GetRelationPublicationActions(rel);
 if (cmd == CMD_UPDATE && pubactions->pubupdate)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot update table \"%s\" because it does not have a replica identity and publishes updates",
      RelationGetRelationName(rel)),
     errhint("To enable updating the table, set REPLICA IDENTITY using ALTER TABLE.")));
 else if (cmd == CMD_DELETE && pubactions->pubdelete)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot delete from table \"%s\" because it does not have a replica identity and publishes deletes",
      RelationGetRelationName(rel)),
     errhint("To enable deleting from the table, set REPLICA IDENTITY using ALTER TABLE.")));
}
