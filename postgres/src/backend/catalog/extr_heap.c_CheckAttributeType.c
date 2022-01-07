
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ atttypid; scalar_t__ attcollation; int attname; scalar_t__ attisdropped; } ;
struct TYPE_6__ {int natts; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef TYPE_2__* Form_pg_attribute ;


 scalar_t__ ANYARRAYOID ;
 int AccessShareLock ;
 int CHKATYPE_ANYARRAY ;
 int CHKATYPE_ANYRECORD ;
 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 char* NameStr (int ) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RECORDARRAYOID ;
 scalar_t__ RECORDOID ;
 TYPE_1__* RelationGetDescr (int ) ;
 char TYPTYPE_COMPOSITE ;
 char TYPTYPE_DOMAIN ;
 char TYPTYPE_PSEUDO ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*,...) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ getBaseType (scalar_t__) ;
 scalar_t__ get_element_type (scalar_t__) ;
 int get_typ_typrelid (scalar_t__) ;
 char get_typtype (scalar_t__) ;
 int * lappend_oid (int *,scalar_t__) ;
 int * list_delete_last (int *) ;
 scalar_t__ list_member_oid (int *,scalar_t__) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 scalar_t__ type_is_collatable (scalar_t__) ;

void
CheckAttributeType(const char *attname,
       Oid atttypid, Oid attcollation,
       List *containing_rowtypes,
       int flags)
{
 char att_typtype = get_typtype(atttypid);
 Oid att_typelem;

 if (att_typtype == TYPTYPE_PSEUDO)
 {
  if (!((atttypid == ANYARRAYOID && (flags & CHKATYPE_ANYARRAY)) ||
     (atttypid == RECORDOID && (flags & CHKATYPE_ANYRECORD)) ||
     (atttypid == RECORDARRAYOID && (flags & CHKATYPE_ANYRECORD))))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("column \"%s\" has pseudo-type %s",
       attname, format_type_be(atttypid))));
 }
 else if (att_typtype == TYPTYPE_DOMAIN)
 {



  CheckAttributeType(attname, getBaseType(atttypid), attcollation,
         containing_rowtypes,
         flags);
 }
 else if (att_typtype == TYPTYPE_COMPOSITE)
 {



  Relation relation;
  TupleDesc tupdesc;
  int i;







  if (list_member_oid(containing_rowtypes, atttypid))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("composite type %s cannot be made a member of itself",
       format_type_be(atttypid))));

  containing_rowtypes = lappend_oid(containing_rowtypes, atttypid);

  relation = relation_open(get_typ_typrelid(atttypid), AccessShareLock);

  tupdesc = RelationGetDescr(relation);

  for (i = 0; i < tupdesc->natts; i++)
  {
   Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

   if (attr->attisdropped)
    continue;
   CheckAttributeType(NameStr(attr->attname),
          attr->atttypid, attr->attcollation,
          containing_rowtypes,
          flags);
  }

  relation_close(relation, AccessShareLock);

  containing_rowtypes = list_delete_last(containing_rowtypes);
 }
 else if (OidIsValid((att_typelem = get_element_type(atttypid))))
 {



  CheckAttributeType(attname, att_typelem, attcollation,
         containing_rowtypes,
         flags);
 }





 if (!OidIsValid(attcollation) && type_is_collatable(atttypid))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
     errmsg("no collation was derived for column \"%s\" with collatable type %s",
      attname, format_type_be(atttypid)),
     errhint("Use the COLLATE clause to set the collation explicitly.")));
}
