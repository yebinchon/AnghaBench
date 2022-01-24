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
 size_t MATRIX_ROWS ; 
 int debug_enable ; 
 int* matrix ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
    /* DDRD |= (1<<6); */
    /* PORTD |= (1<<6); */
    debug_enable = true;

    FUNC1();

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) matrix[i] = 0x00;

    /* // wait for keyboard coming up */
    /* // otherwise LED status update fails */
    /* print("Reseting "); */
    /* while (1) { */
    /*     print("."); */
    /*     while (serial_recv()); */
    /*     serial_send(0x01); */
    /*     _delay_ms(500); */
    /*     if (serial_recv() == 0xFF) { */
    /*         _delay_ms(500); */
    /*         if (serial_recv() == 0x04) */
    /*             break; */
    /*     } */
    /* } */
    /* print(" Done\n"); */

    /* PORTD &= ~(1<<6); */

    FUNC0();
    return;
}