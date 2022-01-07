
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bmRequestType; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 void** udd_ctrl_buffer ;
 TYPE_2__ udd_g_ctrlreq ;

__attribute__((used)) static void udd_ctrl_fetch_ram(void) {
    udd_g_ctrlreq.req.bmRequestType = udd_ctrl_buffer[0];
    udd_g_ctrlreq.req.bRequest = udd_ctrl_buffer[1];
    udd_g_ctrlreq.req.wValue = ((uint16_t)(udd_ctrl_buffer[3]) << 8) + udd_ctrl_buffer[2];
    udd_g_ctrlreq.req.wIndex = ((uint16_t)(udd_ctrl_buffer[5]) << 8) + udd_ctrl_buffer[4];
    udd_g_ctrlreq.req.wLength = ((uint16_t)(udd_ctrl_buffer[7]) << 8) + udd_ctrl_buffer[6];
}
