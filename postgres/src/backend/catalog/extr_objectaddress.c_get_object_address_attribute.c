
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectSubId; int objectId; void* classId; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectType ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;
typedef int LOCKMODE ;
typedef scalar_t__ AttrNumber ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 int InvalidOid ;
 int NameListToString (int *) ;
 int RelationGetRelid (int ) ;
 void* RelationRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ get_attnum (int ,char const*) ;
 int lfirst (int ) ;
 int list_copy (int *) ;
 int list_length (int *) ;
 int list_tail (int *) ;
 int * list_truncate (int ,int) ;
 int makeRangeVarFromNameList (int *) ;
 int relation_close (int ,int ) ;
 int relation_openrv (int ,int ) ;
 char* strVal (int ) ;

__attribute__((used)) static ObjectAddress
get_object_address_attribute(ObjectType objtype, List *object,
        Relation *relp, LOCKMODE lockmode,
        bool missing_ok)
{
 ObjectAddress address;
 List *relname;
 Oid reloid;
 Relation relation;
 const char *attname;
 AttrNumber attnum;


 if (list_length(object) < 2)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("column name must be qualified")));
 attname = strVal(lfirst(list_tail(object)));
 relname = list_truncate(list_copy(object), list_length(object) - 1);

 relation = relation_openrv(makeRangeVarFromNameList(relname), lockmode);
 reloid = RelationGetRelid(relation);


 attnum = get_attnum(reloid, attname);
 if (attnum == InvalidAttrNumber)
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column \"%s\" of relation \"%s\" does not exist",
       attname, NameListToString(relname))));

  address.classId = RelationRelationId;
  address.objectId = InvalidOid;
  address.objectSubId = InvalidAttrNumber;
  relation_close(relation, lockmode);
  return address;
 }

 address.classId = RelationRelationId;
 address.objectId = reloid;
 address.objectSubId = attnum;

 *relp = relation;
 return address;
}
