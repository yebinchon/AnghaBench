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
struct node_editor {scalar_t__ node_count; struct node* node_buf; } ;
struct nk_rect {int dummy; } ;
struct nk_color {int dummy; } ;
struct node {int input_count; int output_count; int /*<<< orphan*/  name; struct nk_rect bounds; struct nk_color color; scalar_t__ value; int /*<<< orphan*/  ID; } ;
typedef  scalar_t__ nk_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct node*) ; 
 struct nk_color FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct node_editor*,struct node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC5(struct node_editor *editor, const char *name, struct nk_rect bounds,
    struct nk_color col, int in_count, int out_count)
{
    static int IDs = 0;
    struct node *node;
    FUNC0((nk_size)editor->node_count < FUNC1(editor->node_buf));
    node = &editor->node_buf[editor->node_count++];
    node->ID = IDs++;
    node->value = 0;
    node->color = FUNC2(255, 0, 0);
    node->input_count = in_count;
    node->output_count = out_count;
    node->color = col;
    node->bounds = bounds;
    FUNC4(node->name, name);
    FUNC3(editor, node);
}