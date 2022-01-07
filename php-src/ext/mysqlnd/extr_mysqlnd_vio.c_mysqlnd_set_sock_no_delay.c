
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_5__ {int socket; } ;
typedef TYPE_2__ php_netstream_data_t ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (int) ;
 int FAILURE ;
 int IPPROTO_TCP ;
 int SUCCESS ;
 int TCP_NODELAY ;
 int setsockopt (int,int ,int ,char*,int) ;

__attribute__((used)) static int
mysqlnd_set_sock_no_delay(php_stream * stream)
{
 int socketd = ((php_netstream_data_t*)stream->abstract)->socket;
 int ret = SUCCESS;
 int flag = 1;
 int result = setsockopt(socketd, IPPROTO_TCP, TCP_NODELAY, (char *) &flag, sizeof(int));

 DBG_ENTER("mysqlnd_set_sock_no_delay");

 if (result == -1) {
  ret = FAILURE;
 }

 DBG_RETURN(ret);
}
