
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ report_data; int report_id; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int REPORT_ID_SYSTEM ;
 scalar_t__ SYSTEM_POWER_DOWN ;
 int __DMB () ;
 int __disable_irq () ;
 int __get_PRIMASK () ;
 int __set_PRIMASK (int ) ;
 int udi_hid_exk_b_report_valid ;
 TYPE_2__ udi_hid_exk_report ;
 int udi_hid_exk_send_report () ;

void send_system(uint16_t data) {
}
