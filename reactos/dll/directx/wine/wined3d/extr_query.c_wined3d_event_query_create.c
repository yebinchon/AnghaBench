
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_query {int dummy; } ;
struct wined3d_parent_ops {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_event_query {struct wined3d_query query; int signalled; int fence; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
typedef enum wined3d_query_type { ____Placeholder_wined3d_query_type } wined3d_query_type ;
struct TYPE_2__ {struct wined3d_gl_info gl_info; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,...) ;
 int WARN (char*) ;
 int WINED3D_OK ;
 int event_query_ops ;
 struct wined3d_event_query* heap_alloc_zero (int) ;
 int heap_free (struct wined3d_event_query*) ;
 int wined3d_fence_init (int *,struct wined3d_gl_info const*) ;
 int wined3d_query_init (struct wined3d_query*,struct wined3d_device*,int,int *,int,int *,void*,struct wined3d_parent_ops const*) ;

__attribute__((used)) static HRESULT wined3d_event_query_create(struct wined3d_device *device,
        enum wined3d_query_type type, void *parent, const struct wined3d_parent_ops *parent_ops,
        struct wined3d_query **query)
{
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    struct wined3d_event_query *object;
    HRESULT hr;

    TRACE("device %p, type %#x, parent %p, parent_ops %p, query %p.\n",
            device, type, parent, parent_ops, query);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    if (FAILED(hr = wined3d_fence_init(&object->fence, gl_info)))
    {
        WARN("Event queries not supported.\n");
        heap_free(object);
        return hr;
    }

    wined3d_query_init(&object->query, device, type, &object->signalled,
            sizeof(object->signalled), &event_query_ops, parent, parent_ops);

    TRACE("Created query %p.\n", object);
    *query = &object->query;

    return WINED3D_OK;
}
