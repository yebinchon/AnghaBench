
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;
struct TYPE_13__ {scalar_t__ len; int data; } ;
struct TYPE_12__ {char* val; int * keyword; int dispchar; } ;
typedef TYPE_2__ PQconninfoOption ;
typedef TYPE_3__ PQExpBufferData ;


 int Assert (int ) ;
 int ERROR ;
 scalar_t__ PQExpBufferDataBroken (TYPE_3__) ;
 TYPE_2__* PQconninfo (int *) ;
 int PQconninfoFree (TYPE_2__*) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_3__*,char*,char*,int *,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int initPQExpBuffer (TYPE_3__*) ;
 char* pstrdup (int ) ;
 int * strchr (int ,char) ;
 int termPQExpBuffer (TYPE_3__*) ;

__attribute__((used)) static char *
libpqrcv_get_conninfo(WalReceiverConn *conn)
{
 PQconninfoOption *conn_opts;
 PQconninfoOption *conn_opt;
 PQExpBufferData buf;
 char *retval;

 Assert(conn->streamConn != ((void*)0));

 initPQExpBuffer(&buf);
 conn_opts = PQconninfo(conn->streamConn);

 if (conn_opts == ((void*)0))
  ereport(ERROR,
    (errmsg("could not parse connection string: %s",
      _("out of memory"))));


 for (conn_opt = conn_opts; conn_opt->keyword != ((void*)0); conn_opt++)
 {
  bool obfuscate;


  if (strchr(conn_opt->dispchar, 'D') ||
   conn_opt->val == ((void*)0) ||
   conn_opt->val[0] == '\0')
   continue;


  obfuscate = strchr(conn_opt->dispchar, '*') != ((void*)0);

  appendPQExpBuffer(&buf, "%s%s=%s",
        buf.len == 0 ? "" : " ",
        conn_opt->keyword,
        obfuscate ? "********" : conn_opt->val);
 }

 PQconninfoFree(conn_opts);

 retval = PQExpBufferDataBroken(buf) ? ((void*)0) : pstrdup(buf.data);
 termPQExpBuffer(&buf);
 return retval;
}
