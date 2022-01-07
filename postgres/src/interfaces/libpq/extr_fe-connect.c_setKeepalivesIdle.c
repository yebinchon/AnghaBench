
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sebuf ;
typedef int idle ;
struct TYPE_4__ {int errorMessage; int sock; int * keepalives_idle; } ;
typedef TYPE_1__ PGconn ;


 int IPPROTO_TCP ;
 int PG_STRERROR_R_BUFLEN ;
 int PG_TCP_KEEPALIVE_IDLE ;
 int PG_TCP_KEEPALIVE_IDLE_STR ;
 int SOCK_ERRNO ;
 int SOCK_STRERROR (int ,char*,int) ;
 int appendPQExpBuffer (int *,int ,int ,int ) ;
 int libpq_gettext (char*) ;
 int parse_int_param (int *,int*,TYPE_1__*,char*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;

__attribute__((used)) static int
setKeepalivesIdle(PGconn *conn)
{
 int idle;

 if (conn->keepalives_idle == ((void*)0))
  return 1;

 if (!parse_int_param(conn->keepalives_idle, &idle, conn,
       "keepalives_idle"))
  return 0;
 if (idle < 0)
  idle = 0;
 return 1;
}
