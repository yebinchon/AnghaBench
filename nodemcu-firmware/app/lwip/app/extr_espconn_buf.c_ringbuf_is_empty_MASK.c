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
struct ringbuf_t {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ringbuf_t const*) ; 
 scalar_t__ FUNC1 (struct ringbuf_t const*) ; 

int FUNC2(const struct ringbuf_t *rb)
{
	return FUNC0(rb) == FUNC1(rb);
}