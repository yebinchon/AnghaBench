
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int modlabel ;
typedef int Oid ;


 int Anum_pg_statistic_ext_oid ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int NAMEDATALEN ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int PointerGetDatum (char*) ;
 int STATEXTNAMENSP ;
 int StrNCpy (char*,char const*,int) ;
 char* makeObjectName (char const*,char const*,char*) ;
 int pfree (char*) ;
 int snprintf (char*,int,char*,char const*,int) ;

__attribute__((used)) static char *
ChooseExtendedStatisticName(const char *name1, const char *name2,
       const char *label, Oid namespaceid)
{
 int pass = 0;
 char *stxname = ((void*)0);
 char modlabel[NAMEDATALEN];


 StrNCpy(modlabel, label, sizeof(modlabel));

 for (;;)
 {
  Oid existingstats;

  stxname = makeObjectName(name1, name2, modlabel);

  existingstats = GetSysCacheOid2(STATEXTNAMENSP, Anum_pg_statistic_ext_oid,
          PointerGetDatum(stxname),
          ObjectIdGetDatum(namespaceid));
  if (!OidIsValid(existingstats))
   break;


  pfree(stxname);
  snprintf(modlabel, sizeof(modlabel), "%s%d", label, ++pass);
 }

 return stxname;
}
