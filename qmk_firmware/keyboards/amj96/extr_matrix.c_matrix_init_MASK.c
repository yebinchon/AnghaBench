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
typedef  size_t uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  DDRD ; 
 size_t MATRIX_ROWS ; 
 int /*<<< orphan*/  PD7 ; 
 int /*<<< orphan*/  PORTD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{

#ifdef UART_RGB_ENABLE
    uart_rgb_init();
#endif

    // 85 REST
    DDRD |= FUNC0(PD7);
    PORTD |= FUNC0(PD7);

    // initialize row and col
    FUNC2();
    FUNC1();

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }
}