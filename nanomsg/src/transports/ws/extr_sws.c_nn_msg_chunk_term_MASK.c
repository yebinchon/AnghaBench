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
struct msg_chunk {int /*<<< orphan*/  item; int /*<<< orphan*/  chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct msg_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4 (struct msg_chunk *it, struct nn_list *msg_array)
{
    FUNC0 (&it->chunk);
    FUNC2 (msg_array, &it->item);
    FUNC3 (&it->item);
    FUNC1 (it);
}