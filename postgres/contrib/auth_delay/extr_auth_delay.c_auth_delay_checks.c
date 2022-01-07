
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Port ;


 int STATUS_OK ;
 long auth_delay_milliseconds ;
 int original_client_auth_hook (int *,int) ;
 int pg_usleep (long) ;

__attribute__((used)) static void
auth_delay_checks(Port *port, int status)
{



 if (original_client_auth_hook)
  original_client_auth_hook(port, status);




 if (status != STATUS_OK)
 {
  pg_usleep(1000L * auth_delay_milliseconds);
 }
}
