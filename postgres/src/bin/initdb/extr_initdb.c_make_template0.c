
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PG_CMD_PUTS (char const* const) ;

__attribute__((used)) static void
make_template0(FILE *cmdfd)
{
 const char *const *line;
 static const char *const template0_setup[] = {
  "CREATE DATABASE template0 IS_TEMPLATE = true ALLOW_CONNECTIONS = false;\n\n",




  "UPDATE pg_database SET datlastsysoid = "
  "    (SELECT oid FROM pg_database "
  "    WHERE datname = 'template0');\n\n",






  "REVOKE CREATE,TEMPORARY ON DATABASE template1 FROM public;\n\n",
  "REVOKE CREATE,TEMPORARY ON DATABASE template0 FROM public;\n\n",

  "COMMENT ON DATABASE template0 IS 'unmodifiable empty database';\n\n",




  "VACUUM pg_database;\n\n",
  ((void*)0)
 };

 for (line = template0_setup; *line; line++)
  PG_CMD_PUTS(*line);
}
