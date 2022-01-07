
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int dbg (char*,char*,int ) ;
 int err (char*,char*,...) ;
 int gai_strerror (int) ;
 int get_exported_devices (char*,int) ;
 int usbip_net_tcp_connect (char*,int ) ;
 int usbip_port_string ;

__attribute__((used)) static int list_exported_devices(char *host)
{
 int rc;
 int sockfd;

 sockfd = usbip_net_tcp_connect(host, usbip_port_string);
 if (sockfd < 0) {
  err("could not connect to %s:%s: %s", host,
      usbip_port_string, gai_strerror(sockfd));
  return -1;
 }
 dbg("connected to %s:%s", host, usbip_port_string);

 rc = get_exported_devices(host, sockfd);
 if (rc < 0) {
  err("failed to get device list from %s", host);
  return -1;
 }

 close(sockfd);

 return 0;
}
