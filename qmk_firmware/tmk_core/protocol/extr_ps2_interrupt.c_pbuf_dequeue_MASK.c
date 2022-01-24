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
 size_t PBUF_SIZE ; 
 int /*<<< orphan*/  SREG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * pbuf ; 
 size_t pbuf_head ; 
 size_t pbuf_tail ; 

__attribute__((used)) static inline uint8_t FUNC1(void) {
    uint8_t val = 0;

    uint8_t sreg = SREG;
    FUNC0();
    if (pbuf_head != pbuf_tail) {
        val       = pbuf[pbuf_tail];
        pbuf_tail = (pbuf_tail + 1) % PBUF_SIZE;
    }
    SREG = sreg;

    return val;
}