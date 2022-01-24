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
struct TYPE_2__ {int /*<<< orphan*/ * id; } ;
struct wined3d_so_statistics_query {TYPE_1__ u; struct wined3d_context* context; int /*<<< orphan*/  entry; } ;
struct wined3d_context {scalar_t__ free_so_statistics_query_count; TYPE_1__* free_so_statistics_queries; int /*<<< orphan*/  free_so_statistics_query_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ *,scalar_t__,int) ; 

void FUNC3(struct wined3d_so_statistics_query *query)
{
    struct wined3d_context *context = query->context;

    FUNC1(&query->entry);
    query->context = NULL;

    if (!FUNC2((void **)&context->free_so_statistics_queries,
            &context->free_so_statistics_query_size, context->free_so_statistics_query_count + 1,
            sizeof(*context->free_so_statistics_queries)))
    {
        FUNC0("Failed to grow free list, leaking GL queries %u, %u in context %p.\n",
                query->u.id[0], query->u.id[1], context);
        return;
    }

    context->free_so_statistics_queries[context->free_so_statistics_query_count++] = query->u;
}