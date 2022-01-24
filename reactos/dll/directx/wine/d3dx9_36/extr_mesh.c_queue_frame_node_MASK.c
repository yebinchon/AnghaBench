#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct frame_node {int /*<<< orphan*/  entry; TYPE_1__* frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  pFrameFirstChild; } ;
typedef  TYPE_1__ D3DXFRAME ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct frame_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct list*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC3(struct list *queue, D3DXFRAME *frame)
{
    struct frame_node *node;

    if (!frame->pFrameFirstChild)
        return TRUE;

    node = FUNC1(FUNC0(), 0, sizeof(*node));
    if (!node)
        return FALSE;

    node->frame = frame;
    FUNC2(queue, &node->entry);

    return TRUE;
}