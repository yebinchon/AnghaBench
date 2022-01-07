
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int count ;
struct TYPE_6__ {int ss_family; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_8__ {int keepalives_count; int default_keepalives_count; int sock; TYPE_2__ laddr; } ;
typedef TYPE_3__ Port ;


 int IPPROTO_TCP ;
 scalar_t__ IS_AF_UNIX (int ) ;
 int LOG ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int TCP_KEEPCNT ;
 int elog (int ,char*,char*) ;
 scalar_t__ pq_getkeepalivescount (TYPE_3__*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;

int
pq_setkeepalivescount(int count, Port *port)
{
 if (port == ((void*)0) || IS_AF_UNIX(port->laddr.addr.ss_family))
  return STATUS_OK;
 if (count != 0)
 {
  elog(LOG, "setsockopt(%s) not supported", "TCP_KEEPCNT");
  return STATUS_ERROR;
 }


 return STATUS_OK;
}
