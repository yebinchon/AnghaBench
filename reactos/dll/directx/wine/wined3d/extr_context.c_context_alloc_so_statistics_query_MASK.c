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
struct wined3d_so_statistics_query {int /*<<< orphan*/  entry; struct wined3d_context* context; TYPE_1__ u; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {int free_so_statistics_query_count; int /*<<< orphan*/  so_statistics_queries; TYPE_1__* free_so_statistics_queries; struct wined3d_gl_info* gl_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct wined3d_context *context,
        struct wined3d_so_statistics_query *query)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_so_statistics_query_count)
    {
        query->u = context->free_so_statistics_queries[--context->free_so_statistics_query_count];
    }
    else
    {
        FUNC1(FUNC4(FUNC0(query->u.id), query->u.id));
        FUNC3("glGenQueries");

        FUNC2("Allocated SO statistics queries %u, %u in context %p.\n",
                query->u.id[0], query->u.id[1], context);
    }

    query->context = context;
    FUNC5(&context->so_statistics_queries, &query->entry);
}