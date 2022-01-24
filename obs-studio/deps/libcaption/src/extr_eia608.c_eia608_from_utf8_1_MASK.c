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
typedef  int /*<<< orphan*/  utf8_char_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 

uint16_t FUNC3(const utf8_char_t* c, int chan)
{
    uint16_t cc_data = FUNC0(c);

    if (0 == cc_data) {
        return cc_data;
    }

    if (chan && !FUNC1(cc_data)) {
        cc_data |= 0x0800;
    }

    return FUNC2(cc_data);
}