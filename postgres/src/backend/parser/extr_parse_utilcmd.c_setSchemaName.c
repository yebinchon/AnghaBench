
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_SCHEMA_DEFINITION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
setSchemaName(char *context_schema, char **stmt_schema_name)
{
 if (*stmt_schema_name == ((void*)0))
  *stmt_schema_name = context_schema;
 else if (strcmp(context_schema, *stmt_schema_name) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_SCHEMA_DEFINITION),
     errmsg("CREATE specifies a schema (%s) "
      "different from the one being created (%s)",
      *stmt_schema_name, context_schema)));
}
