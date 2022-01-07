
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char const* data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_1__* PQExpBuffer ;


 int EXIT_FAILURE ;
 char* _ (char*) ;
 int appendConnStrVal (TYPE_1__*,char const*) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int exit (int ) ;
 char* fmtId (char const*) ;
 int fprintf (int ,char*,char const*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int stderr ;
 int termPQExpBuffer (TYPE_1__*) ;

void
appendPsqlMetaConnect(PQExpBuffer buf, const char *dbname)
{
 const char *s;
 bool complex;






 complex = 0;

 for (s = dbname; *s; s++)
 {
  if (*s == '\n' || *s == '\r')
  {
   fprintf(stderr,
     _("database name contains a newline or carriage return: \"%s\"\n"),
     dbname);
   exit(EXIT_FAILURE);
  }

  if (!((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') ||
     (*s >= '0' && *s <= '9') || *s == '_' || *s == '.'))
  {
   complex = 1;
  }
 }

 appendPQExpBufferStr(buf, "\\connect ");
 if (complex)
 {
  PQExpBufferData connstr;

  initPQExpBuffer(&connstr);
  appendPQExpBufferStr(&connstr, "dbname=");
  appendConnStrVal(&connstr, dbname);

  appendPQExpBufferStr(buf, "-reuse-previous=on ");







  appendPQExpBufferStr(buf, fmtId(connstr.data));

  termPQExpBuffer(&connstr);
 }
 else
  appendPQExpBufferStr(buf, fmtId(dbname));
 appendPQExpBufferChar(buf, '\n');
}
