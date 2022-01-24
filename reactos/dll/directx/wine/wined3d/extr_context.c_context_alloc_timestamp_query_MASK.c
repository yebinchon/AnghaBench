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
struct wined3d_timestamp_query {int /*<<< orphan*/  entry; struct wined3d_context* context; int /*<<< orphan*/  id; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {int free_timestamp_query_count; int /*<<< orphan*/  timestamp_queries; int /*<<< orphan*/ * free_timestamp_queries; struct wined3d_gl_info* gl_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct wined3d_context *context, struct wined3d_timestamp_query *query)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_timestamp_query_count)
    {
        query->id = context->free_timestamp_queries[--context->free_timestamp_query_count];
    }
    else
    {
        FUNC0(FUNC3(1, &query->id));
        FUNC2("glGenQueries");

        FUNC1("Allocated timestamp query %u in context %p.\n", query->id, context);
    }

    query->context = context;
    FUNC4(&context->timestamp_queries, &query->entry);
}