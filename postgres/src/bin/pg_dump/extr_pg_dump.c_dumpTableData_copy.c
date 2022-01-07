
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {char* name; TYPE_2__* namespace; } ;
struct TYPE_17__ {TYPE_3__ dobj; } ;
typedef TYPE_4__ TableInfo ;
struct TYPE_18__ {char const* filtercond; TYPE_4__* tdtable; } ;
typedef TYPE_5__ TableDataInfo ;
struct TYPE_19__ {char* data; int len; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_15__ {TYPE_1__ dobj; } ;
typedef TYPE_6__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;
typedef int Archive ;


 int * ExecuteSqlQuery (int *,char*,int ) ;
 int * GetConnection (int *) ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PGRES_COPY_OUT ;
 int PQclear (int *) ;
 char const* PQerrorMessage (int *) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int *,char**,int ) ;
 int * PQgetResult (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int WriteData (int *,char*,int) ;
 int appendPQExpBuffer (TYPE_6__*,char*,int ,char const*) ;
 int appendPQExpBufferStr (TYPE_6__*,char const*) ;
 int archprintf (int *,char*) ;
 TYPE_6__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_6__*) ;
 int exit_nicely (int) ;
 char* fmtCopyColumnList (TYPE_4__*,TYPE_6__*) ;
 int fmtQualifiedDumpable (TYPE_4__*) ;
 int pg_log_error (char*,char const*) ;
 int pg_log_info (char*,int ,char const*) ;
 int pg_log_warning (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
dumpTableData_copy(Archive *fout, void *dcontext)
{
 TableDataInfo *tdinfo = (TableDataInfo *) dcontext;
 TableInfo *tbinfo = tdinfo->tdtable;
 const char *classname = tbinfo->dobj.name;
 PQExpBuffer q = createPQExpBuffer();





 PQExpBuffer clistBuf = createPQExpBuffer();
 PGconn *conn = GetConnection(fout);
 PGresult *res;
 int ret;
 char *copybuf;
 const char *column_list;

 pg_log_info("dumping contents of table \"%s.%s\"",
    tbinfo->dobj.namespace->dobj.name, classname);







 column_list = fmtCopyColumnList(tbinfo, clistBuf);

 if (tdinfo->filtercond)
 {

  appendPQExpBufferStr(q, "COPY (SELECT ");

  if (strlen(column_list) > 2)
  {
   appendPQExpBufferStr(q, column_list + 1);
   q->data[q->len - 1] = ' ';
  }
  else
   appendPQExpBufferStr(q, "* ");
  appendPQExpBuffer(q, "FROM %s %s) TO stdout;",
        fmtQualifiedDumpable(tbinfo),
        tdinfo->filtercond);
 }
 else
 {
  appendPQExpBuffer(q, "COPY %s %s TO stdout;",
        fmtQualifiedDumpable(tbinfo),
        column_list);
 }
 res = ExecuteSqlQuery(fout, q->data, PGRES_COPY_OUT);
 PQclear(res);
 destroyPQExpBuffer(clistBuf);

 for (;;)
 {
  ret = PQgetCopyData(conn, &copybuf, 0);

  if (ret < 0)
   break;

  if (copybuf)
  {
   WriteData(fout, copybuf, ret);
   PQfreemem(copybuf);
  }
 }
 archprintf(fout, "\\.\n\n\n");

 if (ret == -2)
 {

  pg_log_error("Dumping the contents of table \"%s\" failed: PQgetCopyData() failed.", classname);
  pg_log_error("Error message from server: %s", PQerrorMessage(conn));
  pg_log_error("The command was: %s", q->data);
  exit_nicely(1);
 }


 res = PQgetResult(conn);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
 {
  pg_log_error("Dumping the contents of table \"%s\" failed: PQgetResult() failed.", classname);
  pg_log_error("Error message from server: %s", PQerrorMessage(conn));
  pg_log_error("The command was: %s", q->data);
  exit_nicely(1);
 }
 PQclear(res);


 if (PQgetResult(conn) != ((void*)0))
  pg_log_warning("unexpected extra results during COPY of table \"%s\"",
        classname);

 destroyPQExpBuffer(q);
 return 1;
}
