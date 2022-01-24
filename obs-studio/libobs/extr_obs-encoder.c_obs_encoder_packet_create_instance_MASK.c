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
struct encoder_packet {scalar_t__ size; void* data; } ;

/* Variables and functions */
 long* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,scalar_t__) ; 

void FUNC2(struct encoder_packet *dst,
					const struct encoder_packet *src)
{
	long *p_refs;

	*dst = *src;
	p_refs = FUNC0(src->size + sizeof(long));
	dst->data = (void *)(p_refs + 1);
	*p_refs = 1;
	FUNC1(dst->data, src->data, src->size);
}