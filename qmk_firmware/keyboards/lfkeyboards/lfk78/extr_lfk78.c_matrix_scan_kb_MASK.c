#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_4__ {int layer; int mask; TYPE_1__ color; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCR1A ; 
 int /*<<< orphan*/  OCR1B ; 
 int /*<<< orphan*/  OCR1C ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 TYPE_2__* layer_info ; 
 int layer_state ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
#ifdef WATCHDOG_ENABLE
    wdt_reset();
#endif
#ifdef ISSI_ENABLE
    // switch/underglow lighting update
    static uint32_t issi_device = 0;
    static uint32_t twi_last_ready = 0;
    if(twi_last_ready > 1000){
        // Its been way too long since the last ISSI update, reset the I2C bus and start again
        dprintf("TWI failed to recover, TWI re-init\n");
        twi_last_ready = 0;
        TWIInit();
        force_issi_refresh();
    }
    if(isTWIReady()){
        twi_last_ready = 0;
        // If the i2c bus is available, kick off the issi update, alternate between devices
        update_issi(issi_device, issi_device);
        if(issi_device){
            issi_device = 0;
        }else{
            issi_device = 3;
        }
    }else{
        twi_last_ready++;
    }
#endif
    // Update layer indicator LED
    //
    // Not sure how else to reliably do this... TMK has the 'hook_layer_change'
    // but can't find QMK equiv
    static uint32_t layer_indicator = -1;
    if(layer_indicator != layer_state){
        for(uint32_t i=0;; i++){
            // the layer_info list should end with layer 0xFFFFFFFF
            // it will break this out of the loop and define the unknown layer color
            if((layer_info[i].layer == (layer_state & layer_info[i].mask)) || (layer_info[i].layer == 0xFFFFFFFF)){
                OCR1A = layer_info[i].color.red;
                OCR1B = layer_info[i].color.green;
                OCR1C = layer_info[i].color.blue;
                layer_indicator = layer_state;
                break;
            }
        }
    }
    FUNC4();
}