
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int busid; } ;
struct op_import_request {TYPE_1__ udev; int busid; } ;
struct op_import_reply {TYPE_1__ udev; int busid; } ;
typedef int request ;
typedef int reply ;


 int OP_REP_IMPORT ;
 int OP_REQ_IMPORT ;
 int PACK_OP_IMPORT_REPLY (int ,struct op_import_request*) ;
 int PACK_OP_IMPORT_REQUEST (int ,struct op_import_request*) ;
 scalar_t__ SYSFS_BUS_ID_SIZE ;
 int err (char*,...) ;
 int import_device (int,TYPE_1__*) ;
 int memset (struct op_import_request*,int ,int) ;
 scalar_t__ strncmp (int ,char*,scalar_t__) ;
 int strncpy (int ,char*,scalar_t__) ;
 int usbip_net_recv (int,void*,int) ;
 int usbip_net_recv_op_common (int,int *,int*) ;
 int usbip_net_send (int,void*,int) ;
 int usbip_net_send_op_common (int,int ,int ) ;
 int usbip_op_common_status_string (int) ;

__attribute__((used)) static int query_import_device(int sockfd, char *busid)
{
 int rc;
 struct op_import_request request;
 struct op_import_reply reply;
 uint16_t code = OP_REP_IMPORT;
 int status;

 memset(&request, 0, sizeof(request));
 memset(&reply, 0, sizeof(reply));


 rc = usbip_net_send_op_common(sockfd, OP_REQ_IMPORT, 0);
 if (rc < 0) {
  err("send op_common");
  return -1;
 }

 strncpy(request.busid, busid, SYSFS_BUS_ID_SIZE-1);

 PACK_OP_IMPORT_REQUEST(0, &request);

 rc = usbip_net_send(sockfd, (void *) &request, sizeof(request));
 if (rc < 0) {
  err("send op_import_request");
  return -1;
 }


 rc = usbip_net_recv_op_common(sockfd, &code, &status);
 if (rc < 0) {
  err("Attach Request for %s failed - %s\n",
      busid, usbip_op_common_status_string(status));
  return -1;
 }

 rc = usbip_net_recv(sockfd, (void *) &reply, sizeof(reply));
 if (rc < 0) {
  err("recv op_import_reply");
  return -1;
 }

 PACK_OP_IMPORT_REPLY(0, &reply);


 if (strncmp(reply.udev.busid, busid, SYSFS_BUS_ID_SIZE)) {
  err("recv different busid %s", reply.udev.busid);
  return -1;
 }


 return import_device(sockfd, &reply.udev);
}
