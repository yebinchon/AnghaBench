
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ss_family; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_7__ {scalar_t__ tcp_user_timeout; int default_tcp_user_timeout; int sock; TYPE_2__ laddr; } ;
typedef TYPE_3__ Port ;
typedef int ACCEPT_TYPE_ARG3 ;


 int IPPROTO_TCP ;
 scalar_t__ IS_AF_UNIX (int ) ;
 int LOG ;
 int TCP_USER_TIMEOUT ;
 int elog (int ,char*,char*) ;
 scalar_t__ getsockopt (int ,int ,int ,char*,int*) ;

int
pq_gettcpusertimeout(Port *port)
{
 return 0;

}
