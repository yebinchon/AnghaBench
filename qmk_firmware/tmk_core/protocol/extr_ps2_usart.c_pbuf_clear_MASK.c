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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  SREG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ pbuf_head ; 
 scalar_t__ pbuf_tail ; 

__attribute__((used)) static inline void FUNC1(void) {
    uint8_t sreg = SREG;
    FUNC0();
    pbuf_head = pbuf_tail = 0;
    SREG                  = sreg;
}