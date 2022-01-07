
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char const* user; } ;
struct TYPE_11__ {char const* sockdir; int port; } ;
struct TYPE_10__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGconn ;
typedef TYPE_2__ ClusterInfo ;


 int * PQconnectdb (int ) ;
 int appendConnStrVal (TYPE_1__*,char const*) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 TYPE_4__ os_info ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static PGconn *
get_db_conn(ClusterInfo *cluster, const char *db_name)
{
 PQExpBufferData conn_opts;
 PGconn *conn;


 initPQExpBuffer(&conn_opts);
 appendPQExpBufferStr(&conn_opts, "dbname=");
 appendConnStrVal(&conn_opts, db_name);
 appendPQExpBufferStr(&conn_opts, " user=");
 appendConnStrVal(&conn_opts, os_info.user);
 appendPQExpBuffer(&conn_opts, " port=%d", cluster->port);
 if (cluster->sockdir)
 {
  appendPQExpBufferStr(&conn_opts, " host=");
  appendConnStrVal(&conn_opts, cluster->sockdir);
 }

 conn = PQconnectdb(conn_opts.data);
 termPQExpBuffer(&conn_opts);
 return conn;
}
