
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int PGconn ;


 char* PQescapeIdentifier (int *,char*,int) ;
 int PQfreemem (char*) ;
 int executeStatement (int *,char*) ;
 int fprintf (int ,char*) ;
 char* index_tablespace ;
 int lengthof (char const* const*) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int strlcpy (char*,char const* const,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
initCreatePKeys(PGconn *con)
{
 static const char *const DDLINDEXes[] = {
  "alter table pgbench_branches add primary key (bid)",
  "alter table pgbench_tellers add primary key (tid)",
  "alter table pgbench_accounts add primary key (aid)"
 };
 int i;

 fprintf(stderr, "creating primary keys...\n");
 for (i = 0; i < lengthof(DDLINDEXes); i++)
 {
  char buffer[256];

  strlcpy(buffer, DDLINDEXes[i], sizeof(buffer));

  if (index_tablespace != ((void*)0))
  {
   char *escape_tablespace;

   escape_tablespace = PQescapeIdentifier(con, index_tablespace,
               strlen(index_tablespace));
   snprintf(buffer + strlen(buffer), sizeof(buffer) - strlen(buffer),
      " using index tablespace %s", escape_tablespace);
   PQfreemem(escape_tablespace);
  }

  executeStatement(con, buffer);
 }
}
