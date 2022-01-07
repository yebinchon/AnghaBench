
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int so_timestamp; int so_timestampns; int so_timestamping; } ;
typedef int on ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int SO_TIMESTAMP ;
 int SO_TIMESTAMPING ;
 int SO_TIMESTAMPNS ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;

void config_so_flags(int rcv, struct options o)
{
 int on = 1;

 if (setsockopt(rcv, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
  error(1, errno, "Failed to enable SO_REUSEADDR");

 if (o.so_timestamp &&
     setsockopt(rcv, SOL_SOCKET, SO_TIMESTAMP,
         &o.so_timestamp, sizeof(o.so_timestamp)) < 0)
  error(1, errno, "Failed to enable SO_TIMESTAMP");

 if (o.so_timestampns &&
     setsockopt(rcv, SOL_SOCKET, SO_TIMESTAMPNS,
         &o.so_timestampns, sizeof(o.so_timestampns)) < 0)
  error(1, errno, "Failed to enable SO_TIMESTAMPNS");

 if (o.so_timestamping &&
     setsockopt(rcv, SOL_SOCKET, SO_TIMESTAMPING,
         &o.so_timestamping, sizeof(o.so_timestamping)) < 0)
  error(1, errno, "Failed to set SO_TIMESTAMPING");
}
