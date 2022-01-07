
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opts ;
typedef int buffer ;
typedef int PGconn ;


 char** PARTITION_METHOD ;
 size_t PART_NONE ;
 char* PQescapeIdentifier (int *,char*,int) ;
 int PQfreemem (char*) ;
 scalar_t__ SCALE_32BIT_THRESHOLD ;
 int append_fillfactor (char*,int) ;
 int createPartitions (int *) ;
 int executeStatement (int *,char*) ;
 int fprintf (int ,char*) ;
 int lengthof (struct ddlinfo const*) ;
 size_t partition_method ;
 scalar_t__ scale ;
 int snprintf (char*,int,char*,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 char* tablespace ;
 scalar_t__ unlogged_tables ;

__attribute__((used)) static void
initCreateTables(PGconn *con)
{
 struct ddlinfo
 {
  const char *table;
  const char *smcols;
  const char *bigcols;
  int declare_fillfactor;
 };
 static const struct ddlinfo DDLs[] = {
  {
   "pgbench_history",
   "tid int,bid int,aid    int,delta int,mtime timestamp,filler char(22)",
   "tid int,bid int,aid bigint,delta int,mtime timestamp,filler char(22)",
   0
  },
  {
   "pgbench_tellers",
   "tid int not null,bid int,tbalance int,filler char(84)",
   "tid int not null,bid int,tbalance int,filler char(84)",
   1
  },
  {
   "pgbench_accounts",
   "aid    int not null,bid int,abalance int,filler char(84)",
   "aid bigint not null,bid int,abalance int,filler char(84)",
   1
  },
  {
   "pgbench_branches",
   "bid int not null,bbalance int,filler char(88)",
   "bid int not null,bbalance int,filler char(88)",
   1
  }
 };
 int i;

 fprintf(stderr, "creating tables...\n");

 for (i = 0; i < lengthof(DDLs); i++)
 {
  char opts[256];
  char buffer[256];
  const struct ddlinfo *ddl = &DDLs[i];
  const char *cols;


  opts[0] = '\0';


  if (partition_method != PART_NONE && strcmp(ddl->table, "pgbench_accounts") == 0)
   snprintf(opts + strlen(opts), sizeof(opts) - strlen(opts),
      " partition by %s (aid)", PARTITION_METHOD[partition_method]);
  else if (ddl->declare_fillfactor)

   append_fillfactor(opts, sizeof(opts));

  if (tablespace != ((void*)0))
  {
   char *escape_tablespace;

   escape_tablespace = PQescapeIdentifier(con, tablespace,
               strlen(tablespace));
   snprintf(opts + strlen(opts), sizeof(opts) - strlen(opts),
      " tablespace %s", escape_tablespace);
   PQfreemem(escape_tablespace);
  }

  cols = (scale >= SCALE_32BIT_THRESHOLD) ? ddl->bigcols : ddl->smcols;

  snprintf(buffer, sizeof(buffer), "create%s table %s(%s)%s",
     unlogged_tables ? " unlogged" : "",
     ddl->table, cols, opts);

  executeStatement(con, buffer);
 }

 if (partition_method != PART_NONE)
  createPartitions(con);
}
