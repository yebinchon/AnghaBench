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
typedef  int /*<<< orphan*/  AT91PS_USART ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int port_detected ; 
 scalar_t__ us ; 
 scalar_t__* usa ; 

int FUNC2()
{
	while(1) {
#if 0
		if (!port_detected) {
			if (us == usa[0]) {
				us = usa[1];
			}
			else {
				us = usa[0];
			}
		}
#endif
		if(FUNC1((AT91PS_USART)us)) {
#if 0
			port_detected = 1;
#endif
			return((int)FUNC0((AT91PS_USART)us));
		}
	}
}