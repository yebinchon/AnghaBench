
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ relnamespace; scalar_t__ relisshared; int relname; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_class ;


 int Assert (int) ;
 int GetUserId () ;
 int MyDatabaseId ;
 char* NameStr (int ) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int VACOPT_ANALYZE ;
 int VACOPT_VACUUM ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ pg_class_ownercheck (int ,int ) ;
 scalar_t__ pg_database_ownercheck (int ,int ) ;

bool
vacuum_is_relation_owner(Oid relid, Form_pg_class reltuple, int options)
{
 char *relname;

 Assert((options & (VACOPT_VACUUM | VACOPT_ANALYZE)) != 0);
 if (pg_class_ownercheck(relid, GetUserId()) ||
  (pg_database_ownercheck(MyDatabaseId, GetUserId()) && !reltuple->relisshared))
  return 1;

 relname = NameStr(reltuple->relname);

 if ((options & VACOPT_VACUUM) != 0)
 {
  if (reltuple->relisshared)
   ereport(WARNING,
     (errmsg("skipping \"%s\" --- only superuser can vacuum it",
       relname)));
  else if (reltuple->relnamespace == PG_CATALOG_NAMESPACE)
   ereport(WARNING,
     (errmsg("skipping \"%s\" --- only superuser or database owner can vacuum it",
       relname)));
  else
   ereport(WARNING,
     (errmsg("skipping \"%s\" --- only table or database owner can vacuum it",
       relname)));






  return 0;
 }

 if ((options & VACOPT_ANALYZE) != 0)
 {
  if (reltuple->relisshared)
   ereport(WARNING,
     (errmsg("skipping \"%s\" --- only superuser can analyze it",
       relname)));
  else if (reltuple->relnamespace == PG_CATALOG_NAMESPACE)
   ereport(WARNING,
     (errmsg("skipping \"%s\" --- only superuser or database owner can analyze it",
       relname)));
  else
   ereport(WARNING,
     (errmsg("skipping \"%s\" --- only table or database owner can analyze it",
       relname)));
 }

 return 0;
}
