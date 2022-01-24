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
 int /*<<< orphan*/  _AUX ; 
 int /*<<< orphan*/  _KAUX ; 
 int _KEYPAD ; 
 int current_default_layer ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(int base)
{
    if( current_default_layer != base ) {
        FUNC1(1UL<<base);
        FUNC0(1UL<<base);
        FUNC3(_AUX);
        FUNC3(_KAUX);
    } else {
        if( base < _KEYPAD )
            FUNC2(_AUX);
        else
            FUNC2(_KAUX);
    }
}