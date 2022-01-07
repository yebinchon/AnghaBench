
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sebuf ;
typedef int on ;
struct TYPE_3__ {int errorMessage; int sock; } ;
typedef TYPE_1__ PGconn ;


 int IPPROTO_TCP ;
 int PG_STRERROR_R_BUFLEN ;
 int SOCK_ERRNO ;
 int SOCK_STRERROR (int ,char*,int) ;
 int TCP_NODELAY ;
 int appendPQExpBuffer (int *,int ,int ) ;
 int libpq_gettext (char*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;

__attribute__((used)) static int
connectNoDelay(PGconn *conn)
{
 return 1;
}
