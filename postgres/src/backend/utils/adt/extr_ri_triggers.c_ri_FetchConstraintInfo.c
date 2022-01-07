
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tgconstrrelid; int tgname; int tgconstraint; } ;
typedef TYPE_1__ Trigger ;
struct TYPE_7__ {scalar_t__ fk_relid; scalar_t__ pk_relid; scalar_t__ confmatchtype; } ;
typedef int Relation ;
typedef TYPE_2__ RI_ConstraintInfo ;
typedef int Oid ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 scalar_t__ FKCONSTR_MATCH_FULL ;
 scalar_t__ FKCONSTR_MATCH_PARTIAL ;
 scalar_t__ FKCONSTR_MATCH_SIMPLE ;
 int OidIsValid (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationGetRelid (int ) ;
 int elog (int ,char*,scalar_t__,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 TYPE_2__* ri_LoadConstraintInfo (int ) ;

__attribute__((used)) static const RI_ConstraintInfo *
ri_FetchConstraintInfo(Trigger *trigger, Relation trig_rel, bool rel_is_pk)
{
 Oid constraintOid = trigger->tgconstraint;
 const RI_ConstraintInfo *riinfo;






 if (!OidIsValid(constraintOid))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("no pg_constraint entry for trigger \"%s\" on table \"%s\"",
      trigger->tgname, RelationGetRelationName(trig_rel)),
     errhint("Remove this referential integrity trigger and its mates, then do ALTER TABLE ADD CONSTRAINT.")));


 riinfo = ri_LoadConstraintInfo(constraintOid);


 if (rel_is_pk)
 {
  if (riinfo->fk_relid != trigger->tgconstrrelid ||
   riinfo->pk_relid != RelationGetRelid(trig_rel))
   elog(ERROR, "wrong pg_constraint entry for trigger \"%s\" on table \"%s\"",
     trigger->tgname, RelationGetRelationName(trig_rel));
 }
 else
 {
  if (riinfo->fk_relid != RelationGetRelid(trig_rel) ||
   riinfo->pk_relid != trigger->tgconstrrelid)
   elog(ERROR, "wrong pg_constraint entry for trigger \"%s\" on table \"%s\"",
     trigger->tgname, RelationGetRelationName(trig_rel));
 }

 if (riinfo->confmatchtype != FKCONSTR_MATCH_FULL &&
  riinfo->confmatchtype != FKCONSTR_MATCH_PARTIAL &&
  riinfo->confmatchtype != FKCONSTR_MATCH_SIMPLE)
  elog(ERROR, "unrecognized confmatchtype: %d",
    riinfo->confmatchtype);

 if (riinfo->confmatchtype == FKCONSTR_MATCH_PARTIAL)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("MATCH PARTIAL not yet implemented")));

 return riinfo;
}
