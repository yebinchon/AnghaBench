
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int attname; } ;
struct TYPE_14__ {scalar_t__ classid; scalar_t__ objid; scalar_t__ objsubid; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; int rd_att; } ;
struct TYPE_12__ {scalar_t__ relkind; scalar_t__ reltype; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_depend ;
typedef TYPE_4__* Form_pg_attribute ;


 int AccessShareLock ;
 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int BTEqualStrategyNumber ;
 int DependReferenceIndexId ;
 int DependRelationId ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 char const* RelationGetRelationName (TYPE_2__*) ;
 scalar_t__ RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_4__* TupleDescAttr (int ,scalar_t__) ;
 scalar_t__ TypeRelationId ;
 int check_stack_depth () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*,int ) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (scalar_t__,int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
find_composite_type_dependencies(Oid typeOid, Relation origRelation,
         const char *origTypeName)
{
 Relation depRel;
 ScanKeyData key[2];
 SysScanDesc depScan;
 HeapTuple depTup;


 check_stack_depth();





 depRel = table_open(DependRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(TypeRelationId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(typeOid));

 depScan = systable_beginscan(depRel, DependReferenceIndexId, 1,
         ((void*)0), 2, key);

 while (HeapTupleIsValid(depTup = systable_getnext(depScan)))
 {
  Form_pg_depend pg_depend = (Form_pg_depend) GETSTRUCT(depTup);
  Relation rel;
  Form_pg_attribute att;


  if (pg_depend->classid == TypeRelationId)
  {






   find_composite_type_dependencies(pg_depend->objid,
            origRelation, origTypeName);
   continue;
  }



  if (pg_depend->classid != RelationRelationId ||
   pg_depend->objsubid <= 0)
   continue;

  rel = relation_open(pg_depend->objid, AccessShareLock);
  att = TupleDescAttr(rel->rd_att, pg_depend->objsubid - 1);

  if (rel->rd_rel->relkind == RELKIND_RELATION ||
   rel->rd_rel->relkind == RELKIND_MATVIEW ||
   rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  {
   if (origTypeName)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot alter type \"%s\" because column \"%s.%s\" uses it",
        origTypeName,
        RelationGetRelationName(rel),
        NameStr(att->attname))));
   else if (origRelation->rd_rel->relkind == RELKIND_COMPOSITE_TYPE)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot alter type \"%s\" because column \"%s.%s\" uses it",
        RelationGetRelationName(origRelation),
        RelationGetRelationName(rel),
        NameStr(att->attname))));
   else if (origRelation->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot alter foreign table \"%s\" because column \"%s.%s\" uses its row type",
        RelationGetRelationName(origRelation),
        RelationGetRelationName(rel),
        NameStr(att->attname))));
   else
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot alter table \"%s\" because column \"%s.%s\" uses its row type",
        RelationGetRelationName(origRelation),
        RelationGetRelationName(rel),
        NameStr(att->attname))));
  }
  else if (OidIsValid(rel->rd_rel->reltype))
  {




   find_composite_type_dependencies(rel->rd_rel->reltype,
            origRelation, origTypeName);
  }

  relation_close(rel, AccessShareLock);
 }

 systable_endscan(depScan);

 relation_close(depRel, AccessShareLock);
}
