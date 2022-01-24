#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  config_mode ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
    // RN-42 configure
    if (!config_mode) FUNC1();
    FUNC0("SF,1\r\n");  // factory defaults
    FUNC0("S-,TmkBT\r\n");
    FUNC0("SS,Keyboard/Mouse\r\n");
    FUNC0("SM,4\r\n");  // auto connect(DTR)
    FUNC0("SW,8000\r\n");   // Sniff disable
    FUNC0("S~,6\r\n");   // HID profile
    FUNC0("SH,003C\r\n");   // combo device, out-report, 4-reconnect
    FUNC0("SY,FFF4\r\n");   // transmit power -12
    FUNC0("R,1\r\n");
    if (!config_mode) FUNC2();
}