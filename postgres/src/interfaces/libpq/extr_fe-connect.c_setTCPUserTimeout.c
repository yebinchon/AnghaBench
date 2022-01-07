
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int timeout ;
typedef int sebuf ;
struct TYPE_4__ {int errorMessage; int sock; int * pgtcp_user_timeout; } ;
typedef TYPE_1__ PGconn ;


 int IPPROTO_TCP ;
 int SOCK_ERRNO ;
 int SOCK_STRERROR (int ,char*,int) ;
 int TCP_USER_TIMEOUT ;
 int appendPQExpBuffer (int *,int ,char*,int ) ;
 int libpq_gettext (char*) ;
 int parse_int_param (int *,int*,TYPE_1__*,char*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;

__attribute__((used)) static int
setTCPUserTimeout(PGconn *conn)
{
 int timeout;

 if (conn->pgtcp_user_timeout == ((void*)0))
  return 1;

 if (!parse_int_param(conn->pgtcp_user_timeout, &timeout, conn,
       "tcp_user_timeout"))
  return 0;

 if (timeout < 0)
  timeout = 0;
 return 1;
}
