
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_query {int dummy; } ;
struct wined3d_pipeline_statistics_query {struct wined3d_query query; int statistics; } ;
struct wined3d_parent_ops {int dummy; } ;
struct wined3d_gl_info {int * supported; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
typedef enum wined3d_query_type { ____Placeholder_wined3d_query_type } wined3d_query_type ;
struct TYPE_2__ {struct wined3d_gl_info gl_info; } ;
typedef int HRESULT ;


 size_t ARB_PIPELINE_STATISTICS_QUERY ;
 int E_OUTOFMEMORY ;
 int TRACE (char*,...) ;
 int WARN (char*) ;
 int WINED3DERR_NOTAVAILABLE ;
 int WINED3D_OK ;
 struct wined3d_pipeline_statistics_query* heap_alloc_zero (int) ;
 int pipeline_query_ops ;
 int wined3d_query_init (struct wined3d_query*,struct wined3d_device*,int,int *,int,int *,void*,struct wined3d_parent_ops const*) ;

__attribute__((used)) static HRESULT wined3d_pipeline_query_create(struct wined3d_device *device,
        enum wined3d_query_type type, void *parent, const struct wined3d_parent_ops *parent_ops,
        struct wined3d_query **query)
{
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    struct wined3d_pipeline_statistics_query *object;

    TRACE("device %p, type %#x, parent %p, parent_ops %p, query %p.\n",
            device, type, parent, parent_ops, query);

    if (!gl_info->supported[ARB_PIPELINE_STATISTICS_QUERY])
    {
        WARN("OpenGL implementation does not support pipeline statistics queries.\n");
        return WINED3DERR_NOTAVAILABLE;
    }

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    wined3d_query_init(&object->query, device, type, &object->statistics,
            sizeof(object->statistics), &pipeline_query_ops, parent, parent_ops);

    TRACE("Created query %p.\n", object);
    *query = &object->query;

    return WINED3D_OK;
}
