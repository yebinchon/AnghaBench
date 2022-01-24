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
struct node_link {int input_id; int input_slot; int output_id; int output_slot; } ;
struct node_editor {scalar_t__ link_count; struct node_link* links; } ;
typedef  scalar_t__ nk_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct node_link*) ; 

__attribute__((used)) static void
FUNC2(struct node_editor *editor, int in_id, int in_slot,
    int out_id, int out_slot)
{
    struct node_link *link;
    FUNC0((nk_size)editor->link_count < FUNC1(editor->links));
    link = &editor->links[editor->link_count++];
    link->input_id = in_id;
    link->input_slot = in_slot;
    link->output_id = out_id;
    link->output_slot = out_slot;
}