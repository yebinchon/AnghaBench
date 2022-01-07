
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int user; } ;
struct TYPE_12__ {int port; int sockdir; } ;
struct TYPE_11__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef TYPE_2__ ClusterInfo ;


 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendShellString (TYPE_1__*,int ) ;
 TYPE_1__* createPQExpBuffer () ;
 TYPE_4__ os_info ;
 int resetPQExpBuffer (TYPE_1__*) ;

char *
cluster_conn_opts(ClusterInfo *cluster)
{
 static PQExpBuffer buf;

 if (buf == ((void*)0))
  buf = createPQExpBuffer();
 else
  resetPQExpBuffer(buf);

 if (cluster->sockdir)
 {
  appendPQExpBufferStr(buf, "--host ");
  appendShellString(buf, cluster->sockdir);
  appendPQExpBufferChar(buf, ' ');
 }
 appendPQExpBuffer(buf, "--port %d --username ", cluster->port);
 appendShellString(buf, os_info.user);

 return buf->data;
}
