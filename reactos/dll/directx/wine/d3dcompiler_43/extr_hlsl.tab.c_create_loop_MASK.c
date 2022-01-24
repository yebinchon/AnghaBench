#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct source_location {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; struct source_location loc; int /*<<< orphan*/  type; } ;
struct list {struct list* body; TYPE_1__ node; } ;
struct hlsl_ir_node {int /*<<< orphan*/  entry; } ;
struct hlsl_ir_loop {struct hlsl_ir_loop* body; TYPE_1__ node; } ;
struct hlsl_ir_if {struct hlsl_ir_if* body; TYPE_1__ node; } ;
typedef  enum loop_type { ____Placeholder_loop_type } loop_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HLSL_IR_LOOP ; 
 int LOOP_DO_WHILE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct list*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct list*) ; 
 int /*<<< orphan*/  FUNC5 (struct list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct list*) ; 
 int /*<<< orphan*/  FUNC7 (struct list*,struct list*) ; 
 int /*<<< orphan*/  FUNC8 (struct list*,struct list*) ; 
 struct list* FUNC9 (struct list*) ; 

__attribute__((used)) static struct list *FUNC10(enum loop_type type, struct list *init, struct list *cond,
        struct hlsl_ir_node *iter, struct list *body, struct source_location *loc)
{
    struct list *list = NULL;
    struct hlsl_ir_loop *loop = NULL;
    struct hlsl_ir_if *cond_jump = NULL;

    list = FUNC1(sizeof(*list));
    if (!list)
        goto oom;
    FUNC6(list);

    if (init)
        FUNC7(list, init);

    loop = FUNC1(sizeof(*loop));
    if (!loop)
        goto oom;
    loop->node.type = HLSL_IR_LOOP;
    loop->node.loc = *loc;
    FUNC5(list, &loop->node.entry);
    loop->body = FUNC1(sizeof(*loop->body));
    if (!loop->body)
        goto oom;
    FUNC6(loop->body);

    cond_jump = FUNC9(cond);
    if (!cond_jump)
        goto oom;

    if (type != LOOP_DO_WHILE)
        FUNC5(loop->body, &cond_jump->node.entry);

    FUNC8(loop->body, body);

    if (iter)
        FUNC5(loop->body, &iter->entry);

    if (type == LOOP_DO_WHILE)
        FUNC5(loop->body, &cond_jump->node.entry);

    FUNC2(init);
    FUNC2(cond);
    FUNC2(body);
    return list;

oom:
    FUNC0("Out of memory.\n");
    if (loop)
        FUNC2(loop->body);
    FUNC2(loop);
    FUNC2(cond_jump);
    FUNC2(list);
    FUNC4(init);
    FUNC4(cond);
    FUNC3(iter);
    FUNC4(body);
    return NULL;
}