
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* objectId; int objectSubId; int classId; } ;
typedef int * Relation ;
typedef void* Oid ;
typedef int ObjectType ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;


 int AccessShareLock ;
 int ConstraintRelationId ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 void* InvalidOid ;




 int OidIsValid (void*) ;
 int PolicyRelationId ;
 void* RelationGetRelid (int *) ;
 int RewriteRelationId ;
 int TriggerRelationId ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 void* get_relation_constraint_oid (void*,char const*,int) ;
 void* get_relation_policy_oid (void*,char const*,int) ;
 void* get_rewrite_oid (void*,char const*,int) ;
 void* get_trigger_oid (void*,char const*,int) ;
 int list_copy (int *) ;
 int list_length (int *) ;
 int * list_truncate (int ,int) ;
 int llast (int *) ;
 int makeRangeVarFromNameList (int *) ;
 char* strVal (int ) ;
 int table_close (int *,int ) ;
 int * table_openrv_extended (int ,int ,int) ;

__attribute__((used)) static ObjectAddress
get_object_address_relobject(ObjectType objtype, List *object,
        Relation *relp, bool missing_ok)
{
 ObjectAddress address;
 Relation relation = ((void*)0);
 int nnames;
 const char *depname;
 List *relname;
 Oid reloid;


 depname = strVal(llast(object));


 nnames = list_length(object);
 if (nnames < 2)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("must specify relation and object name")));


 relname = list_truncate(list_copy(object), nnames - 1);
 relation = table_openrv_extended(makeRangeVarFromNameList(relname),
          AccessShareLock,
          missing_ok);

 reloid = relation ? RelationGetRelid(relation) : InvalidOid;

 switch (objtype)
 {
  case 130:
   address.classId = RewriteRelationId;
   address.objectId = relation ?
    get_rewrite_oid(reloid, depname, missing_ok) : InvalidOid;
   address.objectSubId = 0;
   break;
  case 128:
   address.classId = TriggerRelationId;
   address.objectId = relation ?
    get_trigger_oid(reloid, depname, missing_ok) : InvalidOid;
   address.objectSubId = 0;
   break;
  case 129:
   address.classId = ConstraintRelationId;
   address.objectId = relation ?
    get_relation_constraint_oid(reloid, depname, missing_ok) :
    InvalidOid;
   address.objectSubId = 0;
   break;
  case 131:
   address.classId = PolicyRelationId;
   address.objectId = relation ?
    get_relation_policy_oid(reloid, depname, missing_ok) :
    InvalidOid;
   address.objectSubId = 0;
   break;
  default:
   elog(ERROR, "unrecognized objtype: %d", (int) objtype);
 }


 if (!OidIsValid(address.objectId))
 {
  if (relation != ((void*)0))
   table_close(relation, AccessShareLock);

  relation = ((void*)0);
  return address;
 }


 *relp = relation;
 return address;
}
