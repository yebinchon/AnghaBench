
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ev_class; int oid; int ev_enabled; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_rewrite ;


 int ACLCHECK_NOT_OWNER ;
 int Assert (int) ;
 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int CharGetDatum (char) ;
 char DatumGetChar (int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PointerGetDatum (char const*) ;
 int RULERELNAME ;
 scalar_t__ RelationGetRelid (int ) ;
 int RewriteRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy2 (int ,int ,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int get_rel_name (scalar_t__) ;
 int get_rel_relkind (scalar_t__) ;
 int get_relkind_objtype (int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int pg_class_ownercheck (scalar_t__,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
EnableDisableRule(Relation rel, const char *rulename,
      char fires_when)
{
 Relation pg_rewrite_desc;
 Oid owningRel = RelationGetRelid(rel);
 Oid eventRelationOid;
 HeapTuple ruletup;
 Form_pg_rewrite ruleform;
 bool changed = 0;




 pg_rewrite_desc = table_open(RewriteRelationId, RowExclusiveLock);
 ruletup = SearchSysCacheCopy2(RULERELNAME,
          ObjectIdGetDatum(owningRel),
          PointerGetDatum(rulename));
 if (!HeapTupleIsValid(ruletup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("rule \"%s\" for relation \"%s\" does not exist",
      rulename, get_rel_name(owningRel))));

 ruleform = (Form_pg_rewrite) GETSTRUCT(ruletup);




 eventRelationOid = ruleform->ev_class;
 Assert(eventRelationOid == owningRel);
 if (!pg_class_ownercheck(eventRelationOid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(get_rel_relkind(eventRelationOid)),
        get_rel_name(eventRelationOid));




 if (DatumGetChar(ruleform->ev_enabled) !=
  fires_when)
 {
  ruleform->ev_enabled = CharGetDatum(fires_when);
  CatalogTupleUpdate(pg_rewrite_desc, &ruletup->t_self, ruletup);

  changed = 1;
 }

 InvokeObjectPostAlterHook(RewriteRelationId, ruleform->oid, 0);

 heap_freetuple(ruletup);
 table_close(pg_rewrite_desc, RowExclusiveLock);






 if (changed)
  CacheInvalidateRelcache(rel);
}
