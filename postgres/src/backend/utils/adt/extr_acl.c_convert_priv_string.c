
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int AclMode ;


 int ACL_CONNECT ;
 int ACL_CREATE ;
 int ACL_CREATE_TEMP ;
 int ACL_DELETE ;
 int ACL_EXECUTE ;
 int ACL_INSERT ;
 int ACL_NO_RIGHTS ;
 int ACL_REFERENCES ;
 int ACL_SELECT ;
 int ACL_TRIGGER ;
 int ACL_TRUNCATE ;
 int ACL_UPDATE ;
 int ACL_USAGE ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static AclMode
convert_priv_string(text *priv_type_text)
{
 char *priv_type = text_to_cstring(priv_type_text);

 if (pg_strcasecmp(priv_type, "SELECT") == 0)
  return ACL_SELECT;
 if (pg_strcasecmp(priv_type, "INSERT") == 0)
  return ACL_INSERT;
 if (pg_strcasecmp(priv_type, "UPDATE") == 0)
  return ACL_UPDATE;
 if (pg_strcasecmp(priv_type, "DELETE") == 0)
  return ACL_DELETE;
 if (pg_strcasecmp(priv_type, "TRUNCATE") == 0)
  return ACL_TRUNCATE;
 if (pg_strcasecmp(priv_type, "REFERENCES") == 0)
  return ACL_REFERENCES;
 if (pg_strcasecmp(priv_type, "TRIGGER") == 0)
  return ACL_TRIGGER;
 if (pg_strcasecmp(priv_type, "EXECUTE") == 0)
  return ACL_EXECUTE;
 if (pg_strcasecmp(priv_type, "USAGE") == 0)
  return ACL_USAGE;
 if (pg_strcasecmp(priv_type, "CREATE") == 0)
  return ACL_CREATE;
 if (pg_strcasecmp(priv_type, "TEMP") == 0)
  return ACL_CREATE_TEMP;
 if (pg_strcasecmp(priv_type, "TEMPORARY") == 0)
  return ACL_CREATE_TEMP;
 if (pg_strcasecmp(priv_type, "CONNECT") == 0)
  return ACL_CONNECT;
 if (pg_strcasecmp(priv_type, "RULE") == 0)
  return 0;

 ereport(ERROR,
   (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
    errmsg("unrecognized privilege type: \"%s\"", priv_type)));
 return ACL_NO_RIGHTS;
}
