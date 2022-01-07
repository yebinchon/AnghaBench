
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int pgsocket ;
typedef int on ;
typedef int oldopt ;
typedef int newopt ;
struct TYPE_11__ {int ss_family; } ;
struct TYPE_12__ {int salen; TYPE_2__ addr; } ;
struct TYPE_10__ {int salen; int addr; } ;
struct TYPE_13__ {int sock; TYPE_3__ laddr; TYPE_1__ raddr; } ;
typedef TYPE_4__ Port ;


 int IPPROTO_TCP ;
 int IS_AF_UNIX (int ) ;
 int LOG ;
 int PGINVALID_SOCKET ;
 int PQ_SEND_BUFFER_SIZE ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_SNDBUF ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int TCP_NODELAY ;
 int accept (int ,struct sockaddr*,int*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode_for_socket_access () ;
 int errmsg (char*) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 scalar_t__ getsockopt (int ,int ,int ,char*,int*) ;
 int pg_usleep (long) ;
 int pq_setkeepalivescount (int ,TYPE_4__*) ;
 int pq_setkeepalivesidle (int ,TYPE_4__*) ;
 int pq_setkeepalivesinterval (int ,TYPE_4__*) ;
 int pq_settcpusertimeout (int ,TYPE_4__*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;
 int tcp_keepalives_count ;
 int tcp_keepalives_idle ;
 int tcp_keepalives_interval ;
 int tcp_user_timeout ;

int
StreamConnection(pgsocket server_fd, Port *port)
{

 port->raddr.salen = sizeof(port->raddr.addr);
 if ((port->sock = accept(server_fd,
        (struct sockaddr *) &port->raddr.addr,
        &port->raddr.salen)) == PGINVALID_SOCKET)
 {
  ereport(LOG,
    (errcode_for_socket_access(),
     errmsg("could not accept new connection: %m")));
  pg_usleep(100000L);
  return STATUS_ERROR;
 }


 port->laddr.salen = sizeof(port->laddr.addr);
 if (getsockname(port->sock,
     (struct sockaddr *) &port->laddr.addr,
     &port->laddr.salen) < 0)
 {
  elog(LOG, "getsockname() failed: %m");
  return STATUS_ERROR;
 }


 if (!IS_AF_UNIX(port->laddr.addr.ss_family))
 {
  int on;
  on = 1;
  if (setsockopt(port->sock, SOL_SOCKET, SO_KEEPALIVE,
        (char *) &on, sizeof(on)) < 0)
  {
   elog(LOG, "setsockopt(%s) failed: %m", "SO_KEEPALIVE");
   return STATUS_ERROR;
  }
  (void) pq_setkeepalivesidle(tcp_keepalives_idle, port);
  (void) pq_setkeepalivesinterval(tcp_keepalives_interval, port);
  (void) pq_setkeepalivescount(tcp_keepalives_count, port);
  (void) pq_settcpusertimeout(tcp_user_timeout, port);
 }

 return STATUS_OK;
}
