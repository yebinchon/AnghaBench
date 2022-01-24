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
struct sub {int valid; int /*<<< orphan*/  avsub; void* endpts; void* pts; scalar_t__ count; } ;

/* Variables and functions */
 void* MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct sub *sub)
{
    sub->count = 0;
    sub->pts = MP_NOPTS_VALUE;
    sub->endpts = MP_NOPTS_VALUE;
    if (sub->valid)
        FUNC0(&sub->avsub);
    sub->valid = false;
}