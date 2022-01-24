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
 int DDRD ; 
 int DDRF ; 
 int PORTD ; 
 int PORTF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
    // PF7: BT connection control(high: connect, low: disconnect)
    FUNC0();

    // PF6: linked(input without pull-up)
    DDRF  &= ~(1<<6);
    PORTF |=  (1<<6);

    // PF1: RTS(low: allowed to send, high: not allowed)
    DDRF &= ~(1<<1);
    PORTF &= ~(1<<1);

    // PD5: CTS(low: allow to send, high:not allow)
    DDRD |= (1<<5);
    PORTD &= ~(1<<5);

    FUNC1();
}