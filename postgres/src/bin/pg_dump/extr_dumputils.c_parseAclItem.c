
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int CONVERT_PRIV (char,char*) ;
 int abort () ;
 int appendPQExpBuffer (int ,char*,char const*) ;
 char* copyAclUserName (int ,char*) ;
 int pg_free (char*) ;
 char* pg_strdup (char const*) ;
 int printfPQExpBuffer (int ,char*) ;
 int resetPQExpBuffer (int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool
parseAclItem(const char *item, const char *type,
    const char *name, const char *subname, int remoteVersion,
    PQExpBuffer grantee, PQExpBuffer grantor,
    PQExpBuffer privs, PQExpBuffer privswgo)
{
 char *buf;
 bool all_with_go = 1;
 bool all_without_go = 1;
 char *eqpos;
 char *slpos;
 char *pos;

 buf = pg_strdup(item);


 eqpos = copyAclUserName(grantee, buf);
 if (*eqpos != '=')
 {
  pg_free(buf);
  return 0;
 }


 slpos = strchr(eqpos + 1, '/');
 if (slpos)
 {
  *slpos++ = '\0';
  slpos = copyAclUserName(grantor, slpos);
  if (*slpos != '\0')
  {
   pg_free(buf);
   return 0;
  }
 }
 else
 {
  pg_free(buf);
  return 0;
 }
 resetPQExpBuffer(privs);
 resetPQExpBuffer(privswgo);

 if (strcmp(type, "TABLE") == 0 || strcmp(type, "SEQUENCE") == 0 ||
  strcmp(type, "TABLES") == 0 || strcmp(type, "SEQUENCES") == 0)
 {
  do { if ((pos = strchr(eqpos + 1, 'r'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "SELECT", subname); all_without_go = 0; } else { AddAcl(privs, "SELECT", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);

  if (strcmp(type, "SEQUENCE") == 0 ||
   strcmp(type, "SEQUENCES") == 0)

   do { if ((pos = strchr(eqpos + 1, 'U'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "USAGE", subname); all_without_go = 0; } else { AddAcl(privs, "USAGE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
  else
  {

   do { if ((pos = strchr(eqpos + 1, 'a'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "INSERT", subname); all_without_go = 0; } else { AddAcl(privs, "INSERT", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
   do { if ((pos = strchr(eqpos + 1, 'x'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "REFERENCES", subname); all_without_go = 0; } else { AddAcl(privs, "REFERENCES", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);

   if (subname == ((void*)0))
   {
    do { if ((pos = strchr(eqpos + 1, 'd'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "DELETE", subname); all_without_go = 0; } else { AddAcl(privs, "DELETE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
    do { if ((pos = strchr(eqpos + 1, 't'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "TRIGGER", subname); all_without_go = 0; } else { AddAcl(privs, "TRIGGER", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
    if (remoteVersion >= 80400)
     do { if ((pos = strchr(eqpos + 1, 'D'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "TRUNCATE", subname); all_without_go = 0; } else { AddAcl(privs, "TRUNCATE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
   }
  }


  do { if ((pos = strchr(eqpos + 1, 'w'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "UPDATE", subname); all_without_go = 0; } else { AddAcl(privs, "UPDATE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 }
 else if (strcmp(type, "FUNCTION") == 0 ||
    strcmp(type, "FUNCTIONS") == 0)
  do { if ((pos = strchr(eqpos + 1, 'X'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "EXECUTE", subname); all_without_go = 0; } else { AddAcl(privs, "EXECUTE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "PROCEDURE") == 0 ||
    strcmp(type, "PROCEDURES") == 0)
  do { if ((pos = strchr(eqpos + 1, 'X'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "EXECUTE", subname); all_without_go = 0; } else { AddAcl(privs, "EXECUTE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "LANGUAGE") == 0)
  do { if ((pos = strchr(eqpos + 1, 'U'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "USAGE", subname); all_without_go = 0; } else { AddAcl(privs, "USAGE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "SCHEMA") == 0 ||
    strcmp(type, "SCHEMAS") == 0)
 {
  do { if ((pos = strchr(eqpos + 1, 'C'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "CREATE", subname); all_without_go = 0; } else { AddAcl(privs, "CREATE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
  do { if ((pos = strchr(eqpos + 1, 'U'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "USAGE", subname); all_without_go = 0; } else { AddAcl(privs, "USAGE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 }
 else if (strcmp(type, "DATABASE") == 0)
 {
  do { if ((pos = strchr(eqpos + 1, 'C'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "CREATE", subname); all_without_go = 0; } else { AddAcl(privs, "CREATE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
  do { if ((pos = strchr(eqpos + 1, 'c'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "CONNECT", subname); all_without_go = 0; } else { AddAcl(privs, "CONNECT", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
  do { if ((pos = strchr(eqpos + 1, 'T'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "TEMPORARY", subname); all_without_go = 0; } else { AddAcl(privs, "TEMPORARY", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 }
 else if (strcmp(type, "TABLESPACE") == 0)
  do { if ((pos = strchr(eqpos + 1, 'C'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "CREATE", subname); all_without_go = 0; } else { AddAcl(privs, "CREATE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "TYPE") == 0 ||
    strcmp(type, "TYPES") == 0)
  do { if ((pos = strchr(eqpos + 1, 'U'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "USAGE", subname); all_without_go = 0; } else { AddAcl(privs, "USAGE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "FOREIGN DATA WRAPPER") == 0)
  do { if ((pos = strchr(eqpos + 1, 'U'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "USAGE", subname); all_without_go = 0; } else { AddAcl(privs, "USAGE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "FOREIGN SERVER") == 0)
  do { if ((pos = strchr(eqpos + 1, 'U'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "USAGE", subname); all_without_go = 0; } else { AddAcl(privs, "USAGE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "FOREIGN TABLE") == 0)
  do { if ((pos = strchr(eqpos + 1, 'r'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "SELECT", subname); all_without_go = 0; } else { AddAcl(privs, "SELECT", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 else if (strcmp(type, "LARGE OBJECT") == 0)
 {
  do { if ((pos = strchr(eqpos + 1, 'r'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "SELECT", subname); all_without_go = 0; } else { AddAcl(privs, "SELECT", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
  do { if ((pos = strchr(eqpos + 1, 'w'))) { if (*(pos + 1) == '*') { AddAcl(privswgo, "UPDATE", subname); all_without_go = 0; } else { AddAcl(privs, "UPDATE", subname); all_with_go = 0; } } else all_with_go = all_without_go = 0; } while (0);
 }
 else
  abort();



 if (all_with_go)
 {
  resetPQExpBuffer(privs);
  printfPQExpBuffer(privswgo, "ALL");
  if (subname)
   appendPQExpBuffer(privswgo, "(%s)", subname);
 }
 else if (all_without_go)
 {
  resetPQExpBuffer(privswgo);
  printfPQExpBuffer(privs, "ALL");
  if (subname)
   appendPQExpBuffer(privs, "(%s)", subname);
 }

 pg_free(buf);

 return 1;
}
