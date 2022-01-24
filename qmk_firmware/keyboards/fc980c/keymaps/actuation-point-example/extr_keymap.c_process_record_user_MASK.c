#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  AP_DN 131 
#define  AP_READ_EEPROM 130 
#define  AP_READ_RDAC 129 
#define  AP_UP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record)
{
    if (record->event.pressed)
    {
        switch (keycode)
        {
        case AP_UP:
        {
            FUNC1();
            return false;
        }
        case AP_DN:
        {
            FUNC0();
            return false;
        }
        case AP_READ_RDAC:
        {
            FUNC4("RDAC: %d", FUNC3());
            return false;
        }
        case AP_READ_EEPROM:
        {
            FUNC4("EEPROM: %d", FUNC2());
            return false;
        }

        default:
            return true;
        }
    }
    else
    {
        return true;
    }
}