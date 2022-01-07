
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_devlist_request {int dummy; } ;
typedef int req ;


 int dbg (char*) ;
 int memset (struct op_devlist_request*,int ,int) ;
 int send_reply_devlist (int) ;
 int usbip_net_recv (int,struct op_devlist_request*,int) ;

__attribute__((used)) static int recv_request_devlist(int connfd)
{
 struct op_devlist_request req;
 int rc;

 memset(&req, 0, sizeof(req));

 rc = usbip_net_recv(connfd, &req, sizeof(req));
 if (rc < 0) {
  dbg("usbip_net_recv failed: devlist request");
  return -1;
 }

 rc = send_reply_devlist(connfd);
 if (rc < 0) {
  dbg("send_reply_devlist failed");
  return -1;
 }

 return 0;
}
