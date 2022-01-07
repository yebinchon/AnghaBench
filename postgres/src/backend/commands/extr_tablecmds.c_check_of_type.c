
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ typtype; int oid; int typrelid; } ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_type ;


 int AccessShareLock ;
 int Assert (int ) ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 int NoLock ;
 int OidIsValid (int ) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (int ,int ) ;

void
check_of_type(HeapTuple typetuple)
{
 Form_pg_type typ = (Form_pg_type) GETSTRUCT(typetuple);
 bool typeOk = 0;

 if (typ->typtype == TYPTYPE_COMPOSITE)
 {
  Relation typeRelation;

  Assert(OidIsValid(typ->typrelid));
  typeRelation = relation_open(typ->typrelid, AccessShareLock);
  typeOk = (typeRelation->rd_rel->relkind == RELKIND_COMPOSITE_TYPE);






  relation_close(typeRelation, NoLock);
 }
 if (!typeOk)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("type %s is not a composite type",
      format_type_be(typ->oid))));
}
