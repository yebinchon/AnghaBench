
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PG_CMD_PRINTF (char*,int ,int ) ;
 int PG_CMD_PUTS (char const* const) ;
 int escape_quotes (scalar_t__) ;
 scalar_t__ superuser_password ;
 int username ;

__attribute__((used)) static void
setup_auth(FILE *cmdfd)
{
 const char *const *line;
 static const char *const pg_authid_setup[] = {




  "REVOKE ALL on pg_authid FROM public;\n\n",
  ((void*)0)
 };

 for (line = pg_authid_setup; *line != ((void*)0); line++)
  PG_CMD_PUTS(*line);

 if (superuser_password)
  PG_CMD_PRINTF("ALTER USER \"%s\" WITH PASSWORD E'%s';\n\n",
        username, escape_quotes(superuser_password));
}
