
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {void* oid; } ;
struct TYPE_7__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_6__ {int * constr; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef void* Oid ;
typedef int ObjectType ;
typedef TYPE_2__ ObjectAddress ;
typedef int List ;
typedef int LOCKMODE ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_attrdef ;
typedef scalar_t__ AttrNumber ;


 int AccessShareLock ;
 int Anum_pg_attrdef_adnum ;
 int Anum_pg_attrdef_adrelid ;
 int AttrDefaultIndexId ;
 void* AttrDefaultRelationId ;
 int BTEqualStrategyNumber ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int F_INT2EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int16GetDatum (scalar_t__) ;
 scalar_t__ InvalidAttrNumber ;
 void* InvalidOid ;
 int NameListToString (int *) ;
 int ObjectIdGetDatum (void*) ;
 int OidIsValid (void*) ;
 TYPE_1__* RelationGetDescr (int ) ;
 void* RelationGetRelid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ get_attnum (void*,char const*) ;
 int list_copy (int *) ;
 int list_length (int *) ;
 int * list_truncate (int ,int) ;
 int llast (int *) ;
 int makeRangeVarFromNameList (int *) ;
 int relation_close (int ,int ) ;
 int relation_open (void*,int ) ;
 int relation_openrv (int ,int ) ;
 char* strVal (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static ObjectAddress
get_object_address_attrdef(ObjectType objtype, List *object,
         Relation *relp, LOCKMODE lockmode,
         bool missing_ok)
{
 ObjectAddress address;
 List *relname;
 Oid reloid;
 Relation relation;
 const char *attname;
 AttrNumber attnum;
 TupleDesc tupdesc;
 Oid defoid;


 if (list_length(object) < 2)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("column name must be qualified")));
 attname = strVal(llast(object));
 relname = list_truncate(list_copy(object), list_length(object) - 1);

 relation = relation_openrv(makeRangeVarFromNameList(relname), lockmode);
 reloid = RelationGetRelid(relation);

 tupdesc = RelationGetDescr(relation);


 attnum = get_attnum(reloid, attname);
 defoid = InvalidOid;
 if (attnum != InvalidAttrNumber && tupdesc->constr != ((void*)0))
 {
  Relation attrdef;
  ScanKeyData keys[2];
  SysScanDesc scan;
  HeapTuple tup;

  attrdef = relation_open(AttrDefaultRelationId, AccessShareLock);
  ScanKeyInit(&keys[0],
     Anum_pg_attrdef_adrelid,
     BTEqualStrategyNumber,
     F_OIDEQ,
     ObjectIdGetDatum(reloid));
  ScanKeyInit(&keys[1],
     Anum_pg_attrdef_adnum,
     BTEqualStrategyNumber,
     F_INT2EQ,
     Int16GetDatum(attnum));
  scan = systable_beginscan(attrdef, AttrDefaultIndexId, 1,
          ((void*)0), 2, keys);
  if (HeapTupleIsValid(tup = systable_getnext(scan)))
  {
   Form_pg_attrdef atdform = (Form_pg_attrdef) GETSTRUCT(tup);

   defoid = atdform->oid;
  }

  systable_endscan(scan);
  relation_close(attrdef, AccessShareLock);
 }
 if (!OidIsValid(defoid))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("default value for column \"%s\" of relation \"%s\" does not exist",
       attname, NameListToString(relname))));

  address.classId = AttrDefaultRelationId;
  address.objectId = InvalidOid;
  address.objectSubId = InvalidAttrNumber;
  relation_close(relation, lockmode);
  return address;
 }

 address.classId = AttrDefaultRelationId;
 address.objectId = defoid;
 address.objectSubId = 0;

 *relp = relation;
 return address;
}
