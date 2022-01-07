
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *sock_shutdown_str(int shutdown)
{
 switch (shutdown) {
 case 1:
  return "RCV_SHUTDOWN";
 case 2:
  return "SEND_SHUTDOWN";
 case 3:
  return "RCV_SHUTDOWN | SEND_SHUTDOWN";
 default:
  return "0";
 }
}
