
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wValue; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 TYPE_2__ udd_g_ctrlreq ;
 int udd_set_address (int) ;

__attribute__((used)) static void udc_valid_address(void) { udd_set_address(udd_g_ctrlreq.req.wValue & 0x7F); }
