
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ datconnlimit; int datctype; int datcollate; int encoding; int datallowconn; int datname; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_database ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CONNECT ;
 scalar_t__ CountDBConnections (int ) ;
 int DATABASEOID ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_TOO_MANY_CONNECTIONS ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERROR ;
 int FATAL ;
 scalar_t__ GETSTRUCT (int ) ;
 char* GetDatabaseEncodingName () ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int IsAutoVacuumWorkerProcess () ;
 scalar_t__ IsUnderPostmaster ;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int MyDatabaseId ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PGC_BACKEND ;
 int PGC_INTERNAL ;
 int PGC_S_DYNAMIC_DEFAULT ;
 int PGC_S_OVERRIDE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int SetDatabaseEncoding (int ) ;
 int check_strxfrm_bug () ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 int * pg_perm_setlocale (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
CheckMyDatabase(const char *name, bool am_superuser, bool override_allow_connections)
{
 HeapTuple tup;
 Form_pg_database dbform;
 char *collate;
 char *ctype;


 tup = SearchSysCache1(DATABASEOID, ObjectIdGetDatum(MyDatabaseId));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for database %u", MyDatabaseId);
 dbform = (Form_pg_database) GETSTRUCT(tup);


 if (strcmp(name, NameStr(dbform->datname)) != 0)
  ereport(FATAL,
    (errcode(ERRCODE_UNDEFINED_DATABASE),
     errmsg("database \"%s\" has disappeared from pg_database",
      name),
     errdetail("Database OID %u now seems to belong to \"%s\".",
         MyDatabaseId, NameStr(dbform->datname))));
 if (IsUnderPostmaster && !IsAutoVacuumWorkerProcess())
 {



  if (!dbform->datallowconn && !override_allow_connections)
   ereport(FATAL,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("database \"%s\" is not currently accepting connections",
       name)));






  if (!am_superuser &&
   pg_database_aclcheck(MyDatabaseId, GetUserId(),
         ACL_CONNECT) != ACLCHECK_OK)
   ereport(FATAL,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied for database \"%s\"", name),
      errdetail("User does not have CONNECT privilege.")));
  if (dbform->datconnlimit >= 0 &&
   !am_superuser &&
   CountDBConnections(MyDatabaseId) > dbform->datconnlimit)
   ereport(FATAL,
     (errcode(ERRCODE_TOO_MANY_CONNECTIONS),
      errmsg("too many connections for database \"%s\"",
       name)));
 }





 SetDatabaseEncoding(dbform->encoding);

 SetConfigOption("server_encoding", GetDatabaseEncodingName(),
     PGC_INTERNAL, PGC_S_OVERRIDE);

 SetConfigOption("client_encoding", GetDatabaseEncodingName(),
     PGC_BACKEND, PGC_S_DYNAMIC_DEFAULT);


 collate = NameStr(dbform->datcollate);
 ctype = NameStr(dbform->datctype);

 if (pg_perm_setlocale(LC_COLLATE, collate) == ((void*)0))
  ereport(FATAL,
    (errmsg("database locale is incompatible with operating system"),
     errdetail("The database was initialized with LC_COLLATE \"%s\", "
         " which is not recognized by setlocale().", collate),
     errhint("Recreate the database with another locale or install the missing locale.")));

 if (pg_perm_setlocale(LC_CTYPE, ctype) == ((void*)0))
  ereport(FATAL,
    (errmsg("database locale is incompatible with operating system"),
     errdetail("The database was initialized with LC_CTYPE \"%s\", "
         " which is not recognized by setlocale().", ctype),
     errhint("Recreate the database with another locale or install the missing locale.")));


 SetConfigOption("lc_collate", collate, PGC_INTERNAL, PGC_S_OVERRIDE);
 SetConfigOption("lc_ctype", ctype, PGC_INTERNAL, PGC_S_OVERRIDE);

 check_strxfrm_bug();

 ReleaseSysCache(tup);
}
