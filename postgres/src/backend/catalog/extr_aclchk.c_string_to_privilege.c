
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AclMode ;


 int ACL_CONNECT ;
 int ACL_CREATE ;
 int ACL_CREATE_TEMP ;
 int ACL_DELETE ;
 int ACL_EXECUTE ;
 int ACL_INSERT ;
 int ACL_REFERENCES ;
 int ACL_SELECT ;
 int ACL_TRIGGER ;
 int ACL_TRUNCATE ;
 int ACL_UPDATE ;
 int ACL_USAGE ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static AclMode
string_to_privilege(const char *privname)
{
 if (strcmp(privname, "insert") == 0)
  return ACL_INSERT;
 if (strcmp(privname, "select") == 0)
  return ACL_SELECT;
 if (strcmp(privname, "update") == 0)
  return ACL_UPDATE;
 if (strcmp(privname, "delete") == 0)
  return ACL_DELETE;
 if (strcmp(privname, "truncate") == 0)
  return ACL_TRUNCATE;
 if (strcmp(privname, "references") == 0)
  return ACL_REFERENCES;
 if (strcmp(privname, "trigger") == 0)
  return ACL_TRIGGER;
 if (strcmp(privname, "execute") == 0)
  return ACL_EXECUTE;
 if (strcmp(privname, "usage") == 0)
  return ACL_USAGE;
 if (strcmp(privname, "create") == 0)
  return ACL_CREATE;
 if (strcmp(privname, "temporary") == 0)
  return ACL_CREATE_TEMP;
 if (strcmp(privname, "temp") == 0)
  return ACL_CREATE_TEMP;
 if (strcmp(privname, "connect") == 0)
  return ACL_CONNECT;
 if (strcmp(privname, "rule") == 0)
  return 0;
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    errmsg("unrecognized privilege type \"%s\"", privname)));
 return 0;
}
