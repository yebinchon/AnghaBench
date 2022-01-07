
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {TYPE_2__* Group; } ;
struct TYPE_4__ {int reg; } ;
struct TYPE_5__ {TYPE_1__ IN; } ;


 TYPE_3__* PORT ;
 size_t USB2422_HUB_ACTIVE_GROUP ;
 int USB2422_HUB_ACTIVE_PIN ;

uint16_t USB_active(void) { return (PORT->Group[USB2422_HUB_ACTIVE_GROUP].IN.reg & (1 << USB2422_HUB_ACTIVE_PIN)) != 0; }
