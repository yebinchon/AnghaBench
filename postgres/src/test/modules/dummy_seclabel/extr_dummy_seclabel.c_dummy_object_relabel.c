
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectAddress ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_INVALID_NAME ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int superuser () ;

__attribute__((used)) static void
dummy_object_relabel(const ObjectAddress *object, const char *seclabel)
{
 if (seclabel == ((void*)0) ||
  strcmp(seclabel, "unclassified") == 0 ||
  strcmp(seclabel, "classified") == 0)
  return;

 if (strcmp(seclabel, "secret") == 0 ||
  strcmp(seclabel, "top secret") == 0)
 {
  if (!superuser())
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("only superuser can set '%s' label", seclabel)));
  return;
 }
 ereport(ERROR,
   (errcode(ERRCODE_INVALID_NAME),
    errmsg("'%s' is not a valid security label", seclabel)));
}
