
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; int contypid; int conrelid; } ;
typedef int StringInfo ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_oid ;
 int ConstraintRelationId ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int appendStringInfoString (int ,char*) ;
 int elog (int ,char*,int ) ;
 int get_catalog_object_by_oid (int ,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
getConstraintTypeDescription(StringInfo buffer, Oid constroid)
{
 Relation constrRel;
 HeapTuple constrTup;
 Form_pg_constraint constrForm;

 constrRel = table_open(ConstraintRelationId, AccessShareLock);
 constrTup = get_catalog_object_by_oid(constrRel, Anum_pg_constraint_oid,
            constroid);
 if (!HeapTupleIsValid(constrTup))
  elog(ERROR, "cache lookup failed for constraint %u", constroid);

 constrForm = (Form_pg_constraint) GETSTRUCT(constrTup);

 if (OidIsValid(constrForm->conrelid))
  appendStringInfoString(buffer, "table constraint");
 else if (OidIsValid(constrForm->contypid))
  appendStringInfoString(buffer, "domain constraint");
 else
  elog(ERROR, "invalid constraint %u", constrForm->oid);

 table_close(constrRel, AccessShareLock);
}
