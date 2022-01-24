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
typedef  int /*<<< orphan*/  uint32_t ;
struct nn_msg {int /*<<< orphan*/  body; int /*<<< orphan*/  hdrs; int /*<<< orphan*/  sphdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1 (struct nn_msg *self, uint32_t copies)
{
    FUNC0 (&self->sphdr, copies);
    FUNC0 (&self->hdrs, copies);
    FUNC0 (&self->body, copies);
}