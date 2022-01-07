
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int file_type_t ;
typedef int PGresult ;


 int FILE_TYPE_DIRECTORY ;
 int FILE_TYPE_REGULAR ;
 int FILE_TYPE_SYMLINK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char const*) ;
 scalar_t__ PQgetisnull (int *,int ,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int atol (char*) ;
 int conn ;
 int pg_fatal (char*,...) ;
 int process_source_file (char*,int ,int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;

void
libpqProcessFileList(void)
{
 PGresult *res;
 const char *sql;
 int i;
 sql =
  "WITH RECURSIVE files (path, filename, size, isdir) AS (\n"
  "  SELECT '' AS path, filename, size, isdir FROM\n"
  "  (SELECT pg_ls_dir('.', true, false) AS filename) AS fn,\n"
  "        pg_stat_file(fn.filename, true) AS this\n"
  "  UNION ALL\n"
  "  SELECT parent.path || parent.filename || '/' AS path,\n"
  "         fn, this.size, this.isdir\n"
  "  FROM files AS parent,\n"
  "       pg_ls_dir(parent.path || parent.filename, true, false) AS fn,\n"
  "       pg_stat_file(parent.path || parent.filename || '/' || fn, true) AS this\n"
  "       WHERE parent.isdir = 't'\n"
  ")\n"
  "SELECT path || filename, size, isdir,\n"
  "       pg_tablespace_location(pg_tablespace.oid) AS link_target\n"
  "FROM files\n"
  "LEFT OUTER JOIN pg_tablespace ON files.path = 'pg_tblspc/'\n"
  "                             AND oid::text = files.filename\n";
 res = PQexec(conn, sql);

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
  pg_fatal("could not fetch file list: %s",
     PQresultErrorMessage(res));


 if (PQnfields(res) != 4)
  pg_fatal("unexpected result set while fetching file list");


 for (i = 0; i < PQntuples(res); i++)
 {
  char *path = PQgetvalue(res, i, 0);
  int64 filesize = atol(PQgetvalue(res, i, 1));
  bool isdir = (strcmp(PQgetvalue(res, i, 2), "t") == 0);
  char *link_target = PQgetvalue(res, i, 3);
  file_type_t type;

  if (PQgetisnull(res, 0, 1))
  {




   continue;
  }

  if (link_target[0])
   type = FILE_TYPE_SYMLINK;
  else if (isdir)
   type = FILE_TYPE_DIRECTORY;
  else
   type = FILE_TYPE_REGULAR;

  process_source_file(path, type, filesize, link_target);
 }
 PQclear(res);
}
