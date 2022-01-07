
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_12__ {scalar_t__ oid; scalar_t__ rolsuper; int rolname; } ;
struct TYPE_11__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_authid ;
typedef int Datum ;


 int AUTHNAME ;
 int Anum_pg_authid_rolname ;
 int Anum_pg_authid_rolpassword ;
 int AuthIdRelationId ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_RESERVED_NAME ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 scalar_t__ GetOuterUserId () ;
 scalar_t__ GetSessionUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,int ) ;
 scalar_t__ IsReservedName (char const*) ;
 int NOTICE ;
 char const* NameStr (int ) ;
 int Natts_pg_authid ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 scalar_t__ PASSWORD_TYPE_MD5 ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 scalar_t__ SearchSysCacheExists1 (int ,int ) ;
 int TextDatumGetCString (int ) ;
 int WARNING ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ get_password_type (int ) ;
 int have_createrole_privilege () ;
 int heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 int namein ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int superuser () ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
RenameRole(const char *oldname, const char *newname)
{
 HeapTuple oldtuple,
    newtuple;
 TupleDesc dsc;
 Relation rel;
 Datum datum;
 bool isnull;
 Datum repl_val[Natts_pg_authid];
 bool repl_null[Natts_pg_authid];
 bool repl_repl[Natts_pg_authid];
 int i;
 Oid roleid;
 ObjectAddress address;
 Form_pg_authid authform;

 rel = table_open(AuthIdRelationId, RowExclusiveLock);
 dsc = RelationGetDescr(rel);

 oldtuple = SearchSysCache1(AUTHNAME, CStringGetDatum(oldname));
 if (!HeapTupleIsValid(oldtuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("role \"%s\" does not exist", oldname)));
 authform = (Form_pg_authid) GETSTRUCT(oldtuple);
 roleid = authform->oid;

 if (roleid == GetSessionUserId())
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("session user cannot be renamed")));
 if (roleid == GetOuterUserId())
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("current user cannot be renamed")));





 if (IsReservedName(NameStr(authform->rolname)))
  ereport(ERROR,
    (errcode(ERRCODE_RESERVED_NAME),
     errmsg("role name \"%s\" is reserved",
      NameStr(authform->rolname)),
     errdetail("Role names starting with \"pg_\" are reserved.")));

 if (IsReservedName(newname))
  ereport(ERROR,
    (errcode(ERRCODE_RESERVED_NAME),
     errmsg("role name \"%s\" is reserved",
      newname),
     errdetail("Role names starting with \"pg_\" are reserved.")));
 if (SearchSysCacheExists1(AUTHNAME, CStringGetDatum(newname)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("role \"%s\" already exists", newname)));




 if (((Form_pg_authid) GETSTRUCT(oldtuple))->rolsuper)
 {
  if (!superuser())
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("must be superuser to rename superusers")));
 }
 else
 {
  if (!have_createrole_privilege())
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied to rename role")));
 }


 for (i = 0; i < Natts_pg_authid; i++)
  repl_repl[i] = 0;

 repl_repl[Anum_pg_authid_rolname - 1] = 1;
 repl_val[Anum_pg_authid_rolname - 1] = DirectFunctionCall1(namein,
                  CStringGetDatum(newname));
 repl_null[Anum_pg_authid_rolname - 1] = 0;

 datum = heap_getattr(oldtuple, Anum_pg_authid_rolpassword, dsc, &isnull);

 if (!isnull && get_password_type(TextDatumGetCString(datum)) == PASSWORD_TYPE_MD5)
 {

  repl_repl[Anum_pg_authid_rolpassword - 1] = 1;
  repl_null[Anum_pg_authid_rolpassword - 1] = 1;

  ereport(NOTICE,
    (errmsg("MD5 password cleared because of role rename")));
 }

 newtuple = heap_modify_tuple(oldtuple, dsc, repl_val, repl_null, repl_repl);
 CatalogTupleUpdate(rel, &oldtuple->t_self, newtuple);

 InvokeObjectPostAlterHook(AuthIdRelationId, roleid, 0);

 ObjectAddressSet(address, AuthIdRelationId, roleid);

 ReleaseSysCache(oldtuple);




 table_close(rel, NoLock);

 return address;
}
