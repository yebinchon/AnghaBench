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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(uint16_t data) {
    static uint16_t last_data = 0;
    if (data == last_data) return;
    last_data = data;

    uint16_t bitmap = FUNC0(data);

#ifdef BLUEFRUIT_TRACE_SERIAL
    dprintf("\nData: ");
    debug_hex16(data);
    dprintf("; bitmap: ");
    debug_hex16(bitmap);
    dprintf("\n");
    bluefruit_trace_header();
#endif
    FUNC1(0xFD);
    FUNC1(0x00);
    FUNC1(0x02);
    FUNC1((bitmap >> 8) & 0xFF);
    FUNC1(bitmap & 0xFF);
    FUNC1(0x00);
    FUNC1(0x00);
    FUNC1(0x00);
    FUNC1(0x00);
#ifdef BLUEFRUIT_TRACE_SERIAL
    bluefruit_trace_footer();
#endif
}