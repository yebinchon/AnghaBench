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
struct nn_msg {int /*<<< orphan*/  body; int /*<<< orphan*/  hdrs; int /*<<< orphan*/  sphdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 

void FUNC1 (struct nn_msg *self, size_t size)
{
    FUNC0 (&self->sphdr, 0);
    FUNC0 (&self->hdrs, 0);
    FUNC0 (&self->body, size);
}