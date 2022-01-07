
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_occlusion_query {int entry; struct wined3d_context* context; scalar_t__ id; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {int free_occlusion_query_count; int occlusion_queries; scalar_t__* free_occlusion_queries; struct wined3d_gl_info* gl_info; } ;


 size_t ARB_OCCLUSION_QUERY ;
 int GL_EXTCALL (int ) ;
 int TRACE (char*,scalar_t__,struct wined3d_context*) ;
 int WARN (char*) ;
 int checkGLcall (char*) ;
 int glGenQueries (int,scalar_t__*) ;
 int list_add_head (int *,int *) ;

void context_alloc_occlusion_query(struct wined3d_context *context, struct wined3d_occlusion_query *query)
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
            GL_EXTCALL(glGenQueries(1, &query->id));
            checkGLcall("glGenQueries");

            TRACE("Allocated occlusion query %u in context %p.\n", query->id, context);
        }
        else
        {
            WARN("Occlusion queries not supported, not allocating query id.\n");
            query->id = 0;
        }
    }

    query->context = context;
    list_add_head(&context->occlusion_queries, &query->entry);
}
