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
struct nn_chunkref {int dummy; } ;
struct nn_msg {struct nn_chunkref body; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_chunkref*) ; 

void FUNC1 (struct nn_msg *self, struct nn_chunkref new_body) 
{
    FUNC0 (&self->body);
    self->body = new_body;
}