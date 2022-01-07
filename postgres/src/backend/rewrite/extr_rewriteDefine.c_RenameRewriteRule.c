
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ev_type; int rulename; int oid; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef int RangeVar ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_rewrite ;


 int AccessExclusiveLock ;
 scalar_t__ CMD_SELECT ;
 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 scalar_t__ IsDefinedRewriteRule (int ,char const*) ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (char const*) ;
 int RULERELNAME ;
 int RangeVarCallbackForRenameRule ;
 int RangeVarGetRelidExtended (int *,int ,int ,int ,int *) ;
 int RelationGetRelationName (int ) ;
 int RewriteRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy2 (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int heap_freetuple (TYPE_1__*) ;
 int namestrcpy (int *,char const*) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
RenameRewriteRule(RangeVar *relation, const char *oldName,
      const char *newName)
{
 Oid relid;
 Relation targetrel;
 Relation pg_rewrite_desc;
 HeapTuple ruletup;
 Form_pg_rewrite ruleform;
 Oid ruleOid;
 ObjectAddress address;





 relid = RangeVarGetRelidExtended(relation, AccessExclusiveLock,
          0,
          RangeVarCallbackForRenameRule,
          ((void*)0));


 targetrel = relation_open(relid, NoLock);


 pg_rewrite_desc = table_open(RewriteRelationId, RowExclusiveLock);


 ruletup = SearchSysCacheCopy2(RULERELNAME,
          ObjectIdGetDatum(relid),
          PointerGetDatum(oldName));
 if (!HeapTupleIsValid(ruletup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("rule \"%s\" for relation \"%s\" does not exist",
      oldName, RelationGetRelationName(targetrel))));
 ruleform = (Form_pg_rewrite) GETSTRUCT(ruletup);
 ruleOid = ruleform->oid;


 if (IsDefinedRewriteRule(relid, newName))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("rule \"%s\" for relation \"%s\" already exists",
      newName, RelationGetRelationName(targetrel))));





 if (ruleform->ev_type == CMD_SELECT + '0')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("renaming an ON SELECT rule is not allowed")));


 namestrcpy(&(ruleform->rulename), newName);

 CatalogTupleUpdate(pg_rewrite_desc, &ruletup->t_self, ruletup);

 heap_freetuple(ruletup);
 table_close(pg_rewrite_desc, RowExclusiveLock);






 CacheInvalidateRelcache(targetrel);

 ObjectAddressSet(address, RewriteRelationId, ruleOid);




 relation_close(targetrel, NoLock);

 return address;
}
