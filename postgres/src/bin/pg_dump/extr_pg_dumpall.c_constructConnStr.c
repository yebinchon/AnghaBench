
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendConnStrVal (TYPE_1__*,char const*) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char const*) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 char* pg_strdup (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static char *
constructConnStr(const char **keywords, const char **values)
{
 PQExpBuffer buf = createPQExpBuffer();
 char *connstr;
 int i;
 bool firstkeyword = 1;


 for (i = 0; keywords[i] != ((void*)0); i++)
 {
  if (strcmp(keywords[i], "dbname") == 0 ||
   strcmp(keywords[i], "password") == 0 ||
   strcmp(keywords[i], "fallback_application_name") == 0)
   continue;

  if (!firstkeyword)
   appendPQExpBufferChar(buf, ' ');
  firstkeyword = 0;
  appendPQExpBuffer(buf, "%s=", keywords[i]);
  appendConnStrVal(buf, values[i]);
 }

 connstr = pg_strdup(buf->data);
 destroyPQExpBuffer(buf);
 return connstr;
}
