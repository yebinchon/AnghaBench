
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int idle ;
struct TYPE_7__ {int ss_family; } ;
struct TYPE_8__ {TYPE_1__ addr; } ;
struct TYPE_9__ {int keepalives_idle; int default_keepalives_idle; int keepalives_interval; int sock; TYPE_2__ laddr; } ;
typedef TYPE_3__ Port ;


 int IPPROTO_TCP ;
 scalar_t__ IS_AF_UNIX (int ) ;
 int LOG ;
 int PG_TCP_KEEPALIVE_IDLE ;
 int PG_TCP_KEEPALIVE_IDLE_STR ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int elog (int ,char*,...) ;
 scalar_t__ pq_getkeepalivesidle (TYPE_3__*) ;
 int pq_setkeepaliveswin32 (TYPE_3__*,int,int ) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;

int
pq_setkeepalivesidle(int idle, Port *port)
{
 if (port == ((void*)0) || IS_AF_UNIX(port->laddr.addr.ss_family))
  return STATUS_OK;
 if (idle != 0)
 {
  elog(LOG, "setting the keepalive idle time is not supported");
  return STATUS_ERROR;
 }


 return STATUS_OK;
}
