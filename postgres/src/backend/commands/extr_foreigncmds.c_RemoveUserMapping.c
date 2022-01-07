
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int servername; int missing_ok; scalar_t__ user; } ;
struct TYPE_10__ {int servername; int serverid; } ;
struct TYPE_9__ {scalar_t__ objectSubId; int objectId; int classId; } ;
struct TYPE_8__ {scalar_t__ roletype; int rolename; } ;
typedef TYPE_1__ RoleSpec ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef TYPE_3__ ForeignServer ;
typedef TYPE_4__ DropUserMappingStmt ;


 int ACL_ID_PUBLIC ;
 int Anum_pg_user_mapping_oid ;
 int DROP_CASCADE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 TYPE_3__* GetForeignServerByName (int ,int) ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int InvalidOid ;
 int MappingUserName (int ) ;
 int NOTICE ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 scalar_t__ ROLESPEC_PUBLIC ;
 int USERMAPPINGUSERSERVER ;
 int UserMappingRelationId ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int get_rolespec_oid (scalar_t__,int ) ;
 int performDeletion (TYPE_2__*,int ,int ) ;
 int user_mapping_ddl_aclcheck (int ,int ,int ) ;

Oid
RemoveUserMapping(DropUserMappingStmt *stmt)
{
 ObjectAddress object;
 Oid useId;
 Oid umId;
 ForeignServer *srv;
 RoleSpec *role = (RoleSpec *) stmt->user;

 if (role->roletype == ROLESPEC_PUBLIC)
  useId = ACL_ID_PUBLIC;
 else
 {
  useId = get_rolespec_oid(stmt->user, stmt->missing_ok);
  if (!OidIsValid(useId))
  {




   elog(NOTICE, "role \"%s\" does not exist, skipping",
     role->rolename);
   return InvalidOid;
  }
 }

 srv = GetForeignServerByName(stmt->servername, 1);

 if (!srv)
 {
  if (!stmt->missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("server \"%s\" does not exist",
       stmt->servername)));

  ereport(NOTICE,
    (errmsg("server \"%s\" does not exist, skipping",
      stmt->servername)));
  return InvalidOid;
 }

 umId = GetSysCacheOid2(USERMAPPINGUSERSERVER, Anum_pg_user_mapping_oid,
         ObjectIdGetDatum(useId),
         ObjectIdGetDatum(srv->serverid));

 if (!OidIsValid(umId))
 {
  if (!stmt->missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("user mapping for \"%s\" does not exist for server \"%s\"",
       MappingUserName(useId), stmt->servername)));


  ereport(NOTICE,
    (errmsg("user mapping for \"%s\" does not exist for server \"%s\", skipping",
      MappingUserName(useId), stmt->servername)));
  return InvalidOid;
 }

 user_mapping_ddl_aclcheck(useId, srv->serverid, srv->servername);




 object.classId = UserMappingRelationId;
 object.objectId = umId;
 object.objectSubId = 0;

 performDeletion(&object, DROP_CASCADE, 0);

 return umId;
}
