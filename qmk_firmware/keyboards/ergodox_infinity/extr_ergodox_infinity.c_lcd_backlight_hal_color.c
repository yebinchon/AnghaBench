
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {void* CnV; } ;
struct TYPE_5__ {void* CnV; } ;
struct TYPE_4__ {void* CnV; } ;


 TYPE_3__ CHANNEL_BLUE ;
 TYPE_2__ CHANNEL_GREEN ;
 TYPE_1__ CHANNEL_RED ;
 void* cie_lightness (int ) ;

void lcd_backlight_hal_color(uint16_t r, uint16_t g, uint16_t b) {
 CHANNEL_RED.CnV = cie_lightness(r);
 CHANNEL_GREEN.CnV = cie_lightness(g);
 CHANNEL_BLUE.CnV = cie_lightness(b);
}
