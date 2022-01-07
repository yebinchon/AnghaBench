
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int blue; int green; int red; } ;
struct TYPE_4__ {int layer; int mask; TYPE_1__ color; } ;


 int TWIInit () ;
 int force_issi_refresh () ;
 scalar_t__ isTWIReady () ;
 TYPE_2__* layer_info ;
 int layer_state ;
 int matrix_scan_user () ;
 int set_rgb (int,int ,int ,int ) ;
 int update_issi (int,int) ;
 int wdt_reset () ;

void matrix_scan_kb(void)
{
    static uint32_t layer_indicator = -1;
    if(layer_indicator != layer_state){
        for(uint32_t i=0;; i++){


            if((layer_info[i].layer == (layer_state & layer_info[i].mask)) || (layer_info[i].layer == 0xFFFFFFFF)){
                set_rgb(32, layer_info[i].color.red, layer_info[i].color.green, layer_info[i].color.blue);
                layer_indicator = layer_state;
                break;
            }
        }
    }
    matrix_scan_user();
}
