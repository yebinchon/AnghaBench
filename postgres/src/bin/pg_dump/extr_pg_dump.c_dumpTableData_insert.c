
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__* attgenerated; scalar_t__ needs_override; scalar_t__ ispartition; } ;
typedef TYPE_1__ TableInfo ;
struct TYPE_23__ {scalar_t__ filtercond; TYPE_1__* tdtable; } ;
typedef TYPE_2__ TableDataInfo ;
struct TYPE_26__ {TYPE_4__* dopt; } ;
struct TYPE_25__ {int dump_inserts; scalar_t__ do_nothing; scalar_t__ column_inserts; scalar_t__ load_via_partition_root; } ;
struct TYPE_24__ {char* data; } ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_4__ DumpOptions ;
typedef TYPE_5__ Archive ;




 int * ExecuteSqlQuery (TYPE_5__*,char*,int ) ;
 int ExecuteSqlStatement (TYPE_5__*,char*) ;







 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfname (int *,int) ;
 int PQftype (int *,int) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char const* PQgetvalue (int *,int,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;

 int appendPQExpBuffer (TYPE_3__*,char*,scalar_t__) ;
 int appendPQExpBufferChar (TYPE_3__*,char) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 int appendStringLiteralAH (TYPE_3__*,char const*,TYPE_5__*) ;
 int archprintf (TYPE_5__*,char*,char const*) ;
 int archputs (char const*,TYPE_5__*) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 char* fmtId (int ) ;
 scalar_t__ fmtQualifiedDumpable (TYPE_1__*) ;
 TYPE_1__* getRootTableInfo (TYPE_1__*) ;
 int resetPQExpBuffer (TYPE_3__*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
dumpTableData_insert(Archive *fout, void *dcontext)
{
 TableDataInfo *tdinfo = (TableDataInfo *) dcontext;
 TableInfo *tbinfo = tdinfo->tdtable;
 DumpOptions *dopt = fout->dopt;
 PQExpBuffer q = createPQExpBuffer();
 PQExpBuffer insertStmt = ((void*)0);
 PGresult *res;
 int nfields;
 int rows_per_statement = dopt->dump_inserts;
 int rows_this_statement = 0;

 appendPQExpBuffer(q, "DECLARE _pg_dump_cursor CURSOR FOR "
       "SELECT * FROM ONLY %s",
       fmtQualifiedDumpable(tbinfo));
 if (tdinfo->filtercond)
  appendPQExpBuffer(q, " %s", tdinfo->filtercond);

 ExecuteSqlStatement(fout, q->data);

 while (1)
 {
  res = ExecuteSqlQuery(fout, "FETCH 100 FROM _pg_dump_cursor",
         PGRES_TUPLES_OK);
  nfields = PQnfields(res);
  if (insertStmt == ((void*)0))
  {
   TableInfo *targettab;

   insertStmt = createPQExpBuffer();






   if (dopt->load_via_partition_root && tbinfo->ispartition)
    targettab = getRootTableInfo(tbinfo);
   else
    targettab = tbinfo;

   appendPQExpBuffer(insertStmt, "INSERT INTO %s ",
         fmtQualifiedDumpable(targettab));


   if (nfields == 0)
   {
    appendPQExpBufferStr(insertStmt, "DEFAULT VALUES;\n");
   }
   else
   {

    if (dopt->column_inserts)
    {
     appendPQExpBufferChar(insertStmt, '(');
     for (int field = 0; field < nfields; field++)
     {
      if (field > 0)
       appendPQExpBufferStr(insertStmt, ", ");
      appendPQExpBufferStr(insertStmt,
            fmtId(PQfname(res, field)));
     }
     appendPQExpBufferStr(insertStmt, ") ");
    }

    if (tbinfo->needs_override)
     appendPQExpBufferStr(insertStmt, "OVERRIDING SYSTEM VALUE ");

    appendPQExpBufferStr(insertStmt, "VALUES");
   }
  }

  for (int tuple = 0; tuple < PQntuples(res); tuple++)
  {

   if (rows_this_statement == 0)
    archputs(insertStmt->data, fout);
   if (nfields == 0)
    continue;


   if (rows_per_statement == 1)
    archputs(" (", fout);
   else if (rows_this_statement > 0)
    archputs(",\n\t(", fout);
   else
    archputs("\n\t(", fout);

   for (int field = 0; field < nfields; field++)
   {
    if (field > 0)
     archputs(", ", fout);
    if (tbinfo->attgenerated[field])
    {
     archputs("DEFAULT", fout);
     continue;
    }
    if (PQgetisnull(res, tuple, field))
    {
     archputs("NULL", fout);
     continue;
    }


    switch (PQftype(res, field))
    {
     case 133:
     case 132:
     case 131:
     case 129:
     case 135:
     case 134:
     case 130:
      {
       const char *s = PQgetvalue(res, tuple, field);

       if (strspn(s, "0123456789 +-eE.") == strlen(s))
        archputs(s, fout);
       else
        archprintf(fout, "'%s'", s);
      }
      break;

     case 137:
     case 128:
      archprintf(fout, "B'%s'",
           PQgetvalue(res, tuple, field));
      break;

     case 136:
      if (strcmp(PQgetvalue(res, tuple, field), "t") == 0)
       archputs("true", fout);
      else
       archputs("false", fout);
      break;

     default:

      resetPQExpBuffer(q);
      appendStringLiteralAH(q,
             PQgetvalue(res, tuple, field),
             fout);
      archputs(q->data, fout);
      break;
    }
   }


   archputs(")", fout);


   if (++rows_this_statement >= rows_per_statement)
   {
    if (dopt->do_nothing)
     archputs(" ON CONFLICT DO NOTHING;\n", fout);
    else
     archputs(";\n", fout);

    rows_this_statement = 0;
   }
  }

  if (PQntuples(res) <= 0)
  {
   PQclear(res);
   break;
  }
  PQclear(res);
 }


 if (rows_this_statement > 0)
 {
  if (dopt->do_nothing)
   archputs(" ON CONFLICT DO NOTHING;\n", fout);
  else
   archputs(";\n", fout);
 }

 archputs("\n\n", fout);

 ExecuteSqlStatement(fout, "CLOSE _pg_dump_cursor");

 destroyPQExpBuffer(q);
 if (insertStmt != ((void*)0))
  destroyPQExpBuffer(insertStmt);

 return 1;
}
