
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int modlabel ;
typedef int Oid ;


 int ConstraintNameExists (char*,int ) ;
 int NAMEDATALEN ;
 int OidIsValid (int ) ;
 int StrNCpy (char*,char const*,int) ;
 int get_relname_relid (char*,int ) ;
 char* makeObjectName (char const*,char const*,char*) ;
 int pfree (char*) ;
 int snprintf (char*,int,char*,char const*,int) ;

char *
ChooseRelationName(const char *name1, const char *name2,
       const char *label, Oid namespaceid,
       bool isconstraint)
{
 int pass = 0;
 char *relname = ((void*)0);
 char modlabel[NAMEDATALEN];


 StrNCpy(modlabel, label, sizeof(modlabel));

 for (;;)
 {
  relname = makeObjectName(name1, name2, modlabel);

  if (!OidIsValid(get_relname_relid(relname, namespaceid)))
  {
   if (!isconstraint ||
    !ConstraintNameExists(relname, namespaceid))
    break;
  }


  pfree(relname);
  snprintf(modlabel, sizeof(modlabel), "%s%d", label, ++pass);
 }

 return relname;
}
