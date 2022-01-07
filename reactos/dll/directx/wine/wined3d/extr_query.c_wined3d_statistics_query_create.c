
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_query_data_so_statistics {int member_0; int member_1; } ;
struct wined3d_query {int dummy; } ;
struct wined3d_parent_ops {int dummy; } ;
struct wined3d_device {int dummy; } ;
typedef int statistics ;
typedef enum wined3d_query_type { ____Placeholder_wined3d_query_type } wined3d_query_type ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int FIXME (char*,struct wined3d_device*,int,void*,struct wined3d_query**) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct wined3d_query* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,struct wined3d_query*) ;
 int WINED3D_OK ;
 int statistics_query_ops ;
 int wined3d_query_init (struct wined3d_query*,struct wined3d_device*,int,struct wined3d_query_data_so_statistics const*,int,int *,void*,struct wined3d_parent_ops const*) ;

__attribute__((used)) static HRESULT wined3d_statistics_query_create(struct wined3d_device *device,
        enum wined3d_query_type type, void *parent, const struct wined3d_parent_ops *parent_ops,
        struct wined3d_query **query)
{
    static const struct wined3d_query_data_so_statistics statistics = { 1, 1 };
    struct wined3d_query *object;

    FIXME("device %p, type %#x, parent %p, query %p.\n", device, type, parent, query);

    if (!(object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*object))))
        return E_OUTOFMEMORY;

    wined3d_query_init(object, device, type, &statistics,
            sizeof(statistics), &statistics_query_ops, parent, parent_ops);

    TRACE("Created query %p.\n", object);
    *query = object;

    return WINED3D_OK;
}
