
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int serverid; } ;
struct TYPE_10__ {int oid; } ;
struct TYPE_9__ {int oid; } ;
struct TYPE_8__ {int objectId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_user_mapping ;
typedef TYPE_3__* Form_pg_authid ;
typedef TYPE_4__ ForeignServer ;


 int AUTHNAME ;
 int CStringGetDatum (char*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_4__* GetForeignServerByName (char*,int) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectAddressSet (TYPE_1__,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int USERMAPPINGUSERSERVER ;
 int UserMappingRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,...) ;
 int linitial (int *) ;
 int lsecond (int *) ;
 char* strVal (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static ObjectAddress
get_object_address_usermapping(List *object, bool missing_ok)
{
 ObjectAddress address;
 Oid userid;
 char *username;
 char *servername;
 ForeignServer *server;
 HeapTuple tp;

 ObjectAddressSet(address, UserMappingRelationId, InvalidOid);


 username = strVal(linitial(object));
 servername = strVal(lsecond(object));


 if (strcmp(username, "public") == 0)
  userid = InvalidOid;
 else
 {
  tp = SearchSysCache1(AUTHNAME,
        CStringGetDatum(username));
  if (!HeapTupleIsValid(tp))
  {
   if (!missing_ok)
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("user mapping for user \"%s\" on server \"%s\" does not exist",
        username, servername)));
   return address;
  }
  userid = ((Form_pg_authid) GETSTRUCT(tp))->oid;
  ReleaseSysCache(tp);
 }


 server = GetForeignServerByName(servername, 1);
 if (!server)
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("server \"%s\" does not exist", servername)));
  return address;
 }
 tp = SearchSysCache2(USERMAPPINGUSERSERVER,
       ObjectIdGetDatum(userid),
       ObjectIdGetDatum(server->serverid));
 if (!HeapTupleIsValid(tp))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("user mapping for user \"%s\" on server \"%s\" does not exist",
       username, servername)));
  return address;
 }

 address.objectId = ((Form_pg_user_mapping) GETSTRUCT(tp))->oid;

 ReleaseSysCache(tp);

 return address;
}
