
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* data; int len; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGconn ;


 int PQclientEncoding (int *) ;
 int PQmblen (char const*,int) ;
 int PQserverVersion (int *) ;
 int WHEREAND () ;
 int appendPQExpBuffer (TYPE_1__*,char*,char const*) ;
 int appendPQExpBufferChar (TYPE_1__*,char const) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendStringLiteralConn (TYPE_1__*,char*,int *) ;
 int initPQExpBuffer (TYPE_1__*) ;
 scalar_t__ isupper (unsigned char) ;
 char pg_tolower (unsigned char) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int termPQExpBuffer (TYPE_1__*) ;

bool
processSQLNamePattern(PGconn *conn, PQExpBuffer buf, const char *pattern,
       bool have_where, bool force_escape,
       const char *schemavar, const char *namevar,
       const char *altnamevar, const char *visibilityrule)
{
 PQExpBufferData schemabuf;
 PQExpBufferData namebuf;
 int encoding = PQclientEncoding(conn);
 bool inquotes;
 const char *cp;
 int i;
 bool added_clause = 0;





 if (pattern == ((void*)0))
 {

  if (visibilityrule)
  {
   (appendPQExpBufferStr(buf, have_where ? "  AND " : "WHERE "), have_where = 1, added_clause = 1);
   appendPQExpBuffer(buf, "%s\n", visibilityrule);
  }
  return added_clause;
 }

 initPQExpBuffer(&schemabuf);
 initPQExpBuffer(&namebuf);
 appendPQExpBufferStr(&namebuf, "^(");

 inquotes = 0;
 cp = pattern;

 while (*cp)
 {
  char ch = *cp;

  if (ch == '"')
  {
   if (inquotes && cp[1] == '"')
   {

    appendPQExpBufferChar(&namebuf, '"');
    cp++;
   }
   else
    inquotes = !inquotes;
   cp++;
  }
  else if (!inquotes && isupper((unsigned char) ch))
  {
   appendPQExpBufferChar(&namebuf,
          pg_tolower((unsigned char) ch));
   cp++;
  }
  else if (!inquotes && ch == '*')
  {
   appendPQExpBufferStr(&namebuf, ".*");
   cp++;
  }
  else if (!inquotes && ch == '?')
  {
   appendPQExpBufferChar(&namebuf, '.');
   cp++;
  }
  else if (!inquotes && ch == '.')
  {

   resetPQExpBuffer(&schemabuf);
   appendPQExpBufferStr(&schemabuf, namebuf.data);
   resetPQExpBuffer(&namebuf);
   appendPQExpBufferStr(&namebuf, "^(");
   cp++;
  }
  else if (ch == '$')
  {







   appendPQExpBufferStr(&namebuf, "\\$");
   cp++;
  }
  else
  {
   if ((inquotes || force_escape) &&
    strchr("|*+?()[]{}.^$\\", ch))
    appendPQExpBufferChar(&namebuf, '\\');
   i = PQmblen(cp, encoding);
   while (i-- && *cp)
   {
    appendPQExpBufferChar(&namebuf, *cp);
    cp++;
   }
  }
 }
 if (namebuf.len > 2)
 {


  appendPQExpBufferStr(&namebuf, ")$");

  if (strcmp(namebuf.data, "^(.*)$") != 0)
  {
   (appendPQExpBufferStr(buf, have_where ? "  AND " : "WHERE "), have_where = 1, added_clause = 1);
   if (altnamevar)
   {
    appendPQExpBuffer(buf,
          "(%s OPERATOR(pg_catalog.~) ", namevar);
    appendStringLiteralConn(buf, namebuf.data, conn);
    if (PQserverVersion(conn) >= 120000)
     appendPQExpBufferStr(buf, " COLLATE pg_catalog.default");
    appendPQExpBuffer(buf,
          "\n        OR %s OPERATOR(pg_catalog.~) ",
          altnamevar);
    appendStringLiteralConn(buf, namebuf.data, conn);
    if (PQserverVersion(conn) >= 120000)
     appendPQExpBufferStr(buf, " COLLATE pg_catalog.default");
    appendPQExpBufferStr(buf, ")\n");
   }
   else
   {
    appendPQExpBuffer(buf, "%s OPERATOR(pg_catalog.~) ", namevar);
    appendStringLiteralConn(buf, namebuf.data, conn);
    if (PQserverVersion(conn) >= 120000)
     appendPQExpBufferStr(buf, " COLLATE pg_catalog.default");
    appendPQExpBufferChar(buf, '\n');
   }
  }
 }

 if (schemabuf.len > 2)
 {


  appendPQExpBufferStr(&schemabuf, ")$");

  if (strcmp(schemabuf.data, "^(.*)$") != 0 && schemavar)
  {
   (appendPQExpBufferStr(buf, have_where ? "  AND " : "WHERE "), have_where = 1, added_clause = 1);
   appendPQExpBuffer(buf, "%s OPERATOR(pg_catalog.~) ", schemavar);
   appendStringLiteralConn(buf, schemabuf.data, conn);
   if (PQserverVersion(conn) >= 120000)
    appendPQExpBufferStr(buf, " COLLATE pg_catalog.default");
   appendPQExpBufferChar(buf, '\n');
  }
 }
 else
 {

  if (visibilityrule)
  {
   (appendPQExpBufferStr(buf, have_where ? "  AND " : "WHERE "), have_where = 1, added_clause = 1);
   appendPQExpBuffer(buf, "%s\n", visibilityrule);
  }
 }

 termPQExpBuffer(&schemabuf);
 termPQExpBuffer(&namebuf);

 return added_clause;

}
