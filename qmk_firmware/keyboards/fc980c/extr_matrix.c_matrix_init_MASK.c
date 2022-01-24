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
 int DDRB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t MATRIX_ROWS ; 
 int PORTB ; 
 int* _matrix0 ; 
 int* _matrix1 ; 
 int debug_enable ; 
 int debug_matrix ; 
 int* matrix ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* matrix_prev ; 

void FUNC2(void)
{
    debug_enable = true;
    debug_matrix = true;

    FUNC0();

    // LEDs on NumLock, CapsLock and ScrollLock(PB4, PB5, PB6)
    DDRB  |= (1<<4) | (1<<5) | (1<<6);
    PORTB |= (1<<4) | (1<<5) | (1<<6);

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) _matrix0[i] = 0x00;
    for (uint8_t i=0; i < MATRIX_ROWS; i++) _matrix1[i] = 0x00;
    matrix = _matrix0;
    matrix_prev = _matrix1;
    FUNC1();
}