
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct op_common {void* status; void* code; int version; } ;
typedef int op_common ;


 int PACK_OP_COMMON (int,struct op_common*) ;
 int USBIP_VERSION ;
 int dbg (char*,int) ;
 int memset (struct op_common*,int ,int) ;
 int usbip_net_send (int,struct op_common*,int) ;

int usbip_net_send_op_common(int sockfd, uint32_t code, uint32_t status)
{
 struct op_common op_common;
 int rc;

 memset(&op_common, 0, sizeof(op_common));

 op_common.version = USBIP_VERSION;
 op_common.code = code;
 op_common.status = status;

 PACK_OP_COMMON(1, &op_common);

 rc = usbip_net_send(sockfd, &op_common, sizeof(op_common));
 if (rc < 0) {
  dbg("usbip_net_send failed: %d", rc);
  return -1;
 }

 return 0;
}
