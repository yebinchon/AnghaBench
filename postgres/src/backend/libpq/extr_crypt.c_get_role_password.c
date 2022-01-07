
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;
typedef int HeapTuple ;
typedef int Datum ;


 int AUTHNAME ;
 int Anum_pg_authid_rolpassword ;
 int Anum_pg_authid_rolvaliduntil ;
 scalar_t__ DatumGetTimestampTz (int ) ;
 scalar_t__ GetCurrentTimestamp () ;
 int HeapTupleIsValid (int ) ;
 int PointerGetDatum (char const*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 int _ (char*) ;
 char* psprintf (int ,char const*) ;

char *
get_role_password(const char *role, char **logdetail)
{
 TimestampTz vuntil = 0;
 HeapTuple roleTup;
 Datum datum;
 bool isnull;
 char *shadow_pass;


 roleTup = SearchSysCache1(AUTHNAME, PointerGetDatum(role));
 if (!HeapTupleIsValid(roleTup))
 {
  *logdetail = psprintf(_("Role \"%s\" does not exist."),
         role);
  return ((void*)0);
 }

 datum = SysCacheGetAttr(AUTHNAME, roleTup,
       Anum_pg_authid_rolpassword, &isnull);
 if (isnull)
 {
  ReleaseSysCache(roleTup);
  *logdetail = psprintf(_("User \"%s\" has no password assigned."),
         role);
  return ((void*)0);
 }
 shadow_pass = TextDatumGetCString(datum);

 datum = SysCacheGetAttr(AUTHNAME, roleTup,
       Anum_pg_authid_rolvaliduntil, &isnull);
 if (!isnull)
  vuntil = DatumGetTimestampTz(datum);

 ReleaseSysCache(roleTup);




 if (!isnull && vuntil < GetCurrentTimestamp())
 {
  *logdetail = psprintf(_("User \"%s\" has an expired password."),
         role);
  return ((void*)0);
 }

 return shadow_pass;
}
