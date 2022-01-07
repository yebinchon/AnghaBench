
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sebuf ;
typedef int count ;
struct TYPE_4__ {int errorMessage; int sock; int * keepalives_count; } ;
typedef TYPE_1__ PGconn ;


 int IPPROTO_TCP ;
 int PG_STRERROR_R_BUFLEN ;
 int SOCK_ERRNO ;
 int SOCK_STRERROR (int ,char*,int) ;
 int TCP_KEEPCNT ;
 int appendPQExpBuffer (int *,int ,char*,int ) ;
 int libpq_gettext (char*) ;
 int parse_int_param (int *,int*,TYPE_1__*,char*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;

__attribute__((used)) static int
setKeepalivesCount(PGconn *conn)
{
 int count;

 if (conn->keepalives_count == ((void*)0))
  return 1;

 if (!parse_int_param(conn->keepalives_count, &count, conn,
       "keepalives_count"))
  return 0;
 if (count < 0)
  count = 0;
 return 1;
}
