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
struct mp_log_root {int num_buffers; int /*<<< orphan*/  reload_counter; struct mp_log_buffer_entry** buffers; } ;
struct mp_log_buffer_entry {struct mp_log_root* root; } ;
struct mp_log_buffer {struct mp_log_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_log_buffer_entry**,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mp_msg_lock ; 
 struct mp_log_buffer_entry* FUNC3 (struct mp_log_buffer_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_log_buffer_entry*) ; 

void FUNC7(struct mp_log_buffer *buffer)
{
    if (!buffer)
        return;

    FUNC4(&mp_msg_lock);

    struct mp_log_root *root = buffer->root;
    for (int n = 0; n < root->num_buffers; n++) {
        if (root->buffers[n] == buffer) {
            FUNC0(root->buffers, root->num_buffers, n);
            goto found;
        }
    }

    FUNC1();

found:

    while (1) {
        struct mp_log_buffer_entry *e = FUNC3(buffer);
        if (!e)
            break;
        FUNC6(e);
    }
    FUNC6(buffer);

    FUNC2(&root->reload_counter, 1);
    FUNC5(&mp_msg_lock);
}