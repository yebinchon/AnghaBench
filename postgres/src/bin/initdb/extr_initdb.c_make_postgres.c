
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PG_CMD_PUTS (char const* const) ;

__attribute__((used)) static void
make_postgres(FILE *cmdfd)
{
 const char *const *line;
 static const char *const postgres_setup[] = {
  "CREATE DATABASE postgres;\n\n",
  "COMMENT ON DATABASE postgres IS 'default administrative connection database';\n\n",
  ((void*)0)
 };

 for (line = postgres_setup; *line; line++)
  PG_CMD_PUTS(*line);
}
