
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int MyDatabaseId ;
 int NameListToString (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_database_name (int ) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int lsecond (int *) ;
 int lthird (int *) ;
 char* strVal (int ) ;
 int strcmp (char*,int ) ;

void
DeconstructQualifiedName(List *names,
       char **nspname_p,
       char **objname_p)
{
 char *catalogname;
 char *schemaname = ((void*)0);
 char *objname = ((void*)0);

 switch (list_length(names))
 {
  case 1:
   objname = strVal(linitial(names));
   break;
  case 2:
   schemaname = strVal(linitial(names));
   objname = strVal(lsecond(names));
   break;
  case 3:
   catalogname = strVal(linitial(names));
   schemaname = strVal(lsecond(names));
   objname = strVal(lthird(names));




   if (strcmp(catalogname, get_database_name(MyDatabaseId)) != 0)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cross-database references are not implemented: %s",
        NameListToString(names))));
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("improper qualified name (too many dotted names): %s",
       NameListToString(names))));
   break;
 }

 *nspname_p = schemaname;
 *objname_p = objname;
}
