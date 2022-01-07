
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lastcount; scalar_t__ count; } ;


 TYPE_1__ inbuf ;
 scalar_t__* printbuf ;

void CDC_init(void) {
    inbuf.count = 0;
    inbuf.lastcount = 0;
    printbuf[0] = 0;
}
