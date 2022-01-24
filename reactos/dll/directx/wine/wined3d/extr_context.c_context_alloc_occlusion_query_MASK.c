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
struct wined3d_occlusion_query {int /*<<< orphan*/  entry; struct wined3d_context* context; scalar_t__ id; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {int free_occlusion_query_count; int /*<<< orphan*/  occlusion_queries; scalar_t__* free_occlusion_queries; struct wined3d_gl_info* gl_info; } ;

/* Variables and functions */
 size_t ARB_OCCLUSION_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct wined3d_context *context, struct wined3d_occlusion_query *query)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_occlusion_query_count)
    {
        query->id = context->free_occlusion_queries[--context->free_occlusion_query_count];
    }
    else
    {
        if (gl_info->supported[ARB_OCCLUSION_QUERY])
        {
            FUNC0(FUNC4(1, &query->id));
            FUNC3("glGenQueries");

            FUNC1("Allocated occlusion query %u in context %p.\n", query->id, context);
        }
        else
        {
            FUNC2("Occlusion queries not supported, not allocating query id.\n");
            query->id = 0;
        }
    }

    query->context = context;
    FUNC5(&context->occlusion_queries, &query->entry);
}