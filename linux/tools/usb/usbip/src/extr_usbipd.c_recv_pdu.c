
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;






 int OP_UNSPEC ;
 int dbg (char*,int) ;
 int driver ;
 int err (char*,int) ;
 int info (char*,int,int) ;
 int recv_request_devlist (int) ;
 int recv_request_import (int) ;
 int usbip_net_recv_op_common (int,int*,int*) ;
 int usbip_refresh_device_list (int ) ;

__attribute__((used)) static int recv_pdu(int connfd)
{
 uint16_t code = OP_UNSPEC;
 int ret;
 int status;

 ret = usbip_net_recv_op_common(connfd, &code, &status);
 if (ret < 0) {
  dbg("could not receive opcode: %#0x", code);
  return -1;
 }

 ret = usbip_refresh_device_list(driver);
 if (ret < 0) {
  dbg("could not refresh device list: %d", ret);
  return -1;
 }

 info("received request: %#0x(%d)", code, connfd);
 switch (code) {
 case 129:
  ret = recv_request_devlist(connfd);
  break;
 case 128:
  ret = recv_request_import(connfd);
  break;
 case 130:
 case 131:
 default:
  err("received an unknown opcode: %#0x", code);
  ret = -1;
 }

 if (ret == 0)
  info("request %#0x(%d): complete", code, connfd);
 else
  info("request %#0x(%d): failed", code, connfd);

 return ret;
}
