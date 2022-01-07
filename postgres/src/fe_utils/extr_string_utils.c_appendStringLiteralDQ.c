
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int suffixes ;
struct TYPE_7__ {char const* data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendPQExpBufferChar (TYPE_1__*,char const) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int * strstr (char const*,char const*) ;

void
appendStringLiteralDQ(PQExpBuffer buf, const char *str, const char *dqprefix)
{
 static const char suffixes[] = "_XXXXXXX";
 int nextchar = 0;
 PQExpBuffer delimBuf = createPQExpBuffer();


 appendPQExpBufferChar(delimBuf, '$');
 if (dqprefix)
  appendPQExpBufferStr(delimBuf, dqprefix);






 while (strstr(str, delimBuf->data) != ((void*)0))
 {
  appendPQExpBufferChar(delimBuf, suffixes[nextchar++]);
  nextchar %= sizeof(suffixes) - 1;
 }


 appendPQExpBufferChar(delimBuf, '$');


 appendPQExpBufferStr(buf, delimBuf->data);
 appendPQExpBufferStr(buf, str);
 appendPQExpBufferStr(buf, delimBuf->data);

 destroyPQExpBuffer(delimBuf);
}
