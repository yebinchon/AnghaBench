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
struct wined3d_timestamp_query {int /*<<< orphan*/  id; struct wined3d_context* context; int /*<<< orphan*/  entry; } ;
struct wined3d_context {scalar_t__ free_timestamp_query_count; int /*<<< orphan*/ * free_timestamp_queries; int /*<<< orphan*/  free_timestamp_query_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ *,scalar_t__,int) ; 

void FUNC3(struct wined3d_timestamp_query *query)
{
    struct wined3d_context *context = query->context;

    FUNC1(&query->entry);
    query->context = NULL;

    if (!FUNC2((void **)&context->free_timestamp_queries,
            &context->free_timestamp_query_size, context->free_timestamp_query_count + 1,
            sizeof(*context->free_timestamp_queries)))
    {
        FUNC0("Failed to grow free list, leaking query %u in context %p.\n", query->id, context);
        return;
    }

    context->free_timestamp_queries[context->free_timestamp_query_count++] = query->id;
}