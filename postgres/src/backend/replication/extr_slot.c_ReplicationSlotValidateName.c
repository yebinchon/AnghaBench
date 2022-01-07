
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_NAME ;
 int ERRCODE_NAME_TOO_LONG ;
 scalar_t__ NAMEDATALEN ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

bool
ReplicationSlotValidateName(const char *name, int elevel)
{
 const char *cp;

 if (strlen(name) == 0)
 {
  ereport(elevel,
    (errcode(ERRCODE_INVALID_NAME),
     errmsg("replication slot name \"%s\" is too short",
      name)));
  return 0;
 }

 if (strlen(name) >= NAMEDATALEN)
 {
  ereport(elevel,
    (errcode(ERRCODE_NAME_TOO_LONG),
     errmsg("replication slot name \"%s\" is too long",
      name)));
  return 0;
 }

 for (cp = name; *cp; cp++)
 {
  if (!((*cp >= 'a' && *cp <= 'z')
     || (*cp >= '0' && *cp <= '9')
     || (*cp == '_')))
  {
   ereport(elevel,
     (errcode(ERRCODE_INVALID_NAME),
      errmsg("replication slot name \"%s\" contains invalid character",
       name),
      errhint("Replication slot names may only contain lower case letters, numbers, and the underscore character.")));
   return 0;
  }
 }
 return 1;
}
