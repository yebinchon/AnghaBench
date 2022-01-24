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
struct mp_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_ring*) ; 
 char* FUNC3 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *FUNC4(struct mp_ring *buffer, void *talloc_ctx)
{
    return FUNC3(
        talloc_ctx,
        "Ringbuffer { .size = %dB, .buffered = %dB, .available = %dB }",
        FUNC2(buffer),
        FUNC1(buffer),
        FUNC0(buffer));
}