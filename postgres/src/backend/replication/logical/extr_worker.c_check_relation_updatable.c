
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relname; int nspname; } ;
struct TYPE_5__ {TYPE_1__ remoterel; int localrel; scalar_t__ updatable; } ;
typedef TYPE_2__ LogicalRepRelMapEntry ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int GetRelationIdentityOrPK (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;

__attribute__((used)) static void
check_relation_updatable(LogicalRepRelMapEntry *rel)
{

 if (rel->updatable)
  return;





 if (OidIsValid(GetRelationIdentityOrPK(rel->localrel)))
 {
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("publisher did not send replica identity column "
      "expected by the logical replication target relation \"%s.%s\"",
      rel->remoterel.nspname, rel->remoterel.relname)));
 }

 ereport(ERROR,
   (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
    errmsg("logical replication target relation \"%s.%s\" has "
     "neither REPLICA IDENTITY index nor PRIMARY "
     "KEY and published relation does not have "
     "REPLICA IDENTITY FULL",
     rel->remoterel.nspname, rel->remoterel.relname)));
}
