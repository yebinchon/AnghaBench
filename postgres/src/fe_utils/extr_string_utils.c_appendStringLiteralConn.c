
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGconn ;


 char ESCAPE_STRING_SYNTAX ;
 int PQclientEncoding (int *) ;
 scalar_t__ PQescapeStringConn (int *,char*,char const*,size_t,int *) ;
 int PQserverVersion (int *) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendStringLiteral (TYPE_1__*,char const*,int ,int) ;
 int enlargePQExpBuffer (TYPE_1__*,int) ;
 int * strchr (char const*,char) ;
 size_t strlen (char const*) ;

void
appendStringLiteralConn(PQExpBuffer buf, const char *str, PGconn *conn)
{
 size_t length = strlen(str);





 if (strchr(str, '\\') != ((void*)0) && PQserverVersion(conn) >= 80100)
 {

  if (buf->len > 0 && buf->data[buf->len - 1] != ' ')
   appendPQExpBufferChar(buf, ' ');
  appendPQExpBufferChar(buf, ESCAPE_STRING_SYNTAX);
  appendStringLiteral(buf, str, PQclientEncoding(conn), 0);
  return;
 }


 if (!enlargePQExpBuffer(buf, 2 * length + 2))
  return;
 appendPQExpBufferChar(buf, '\'');
 buf->len += PQescapeStringConn(conn, buf->data + buf->len,
           str, length, ((void*)0));
 appendPQExpBufferChar(buf, '\'');
}
