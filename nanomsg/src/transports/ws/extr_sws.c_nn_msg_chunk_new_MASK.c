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
struct nn_list {int dummy; } ;
struct msg_chunk {int /*<<< orphan*/  chunk; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msg_chunk*) ; 
 struct msg_chunk* FUNC1 (int,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void *FUNC7 (size_t size, struct nn_list *msg_array)
{
    struct msg_chunk *self;

    self = FUNC1 (sizeof (struct msg_chunk), "msg_chunk");
    FUNC0 (self);

    FUNC3 (&self->chunk, size);
    FUNC6 (&self->item);

    FUNC5 (msg_array, &self->item, FUNC4 (msg_array));

    return FUNC2 (&self->chunk);
}