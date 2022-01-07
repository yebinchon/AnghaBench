
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_query_ops {int dummy; } ;
struct wined3d_query {int ref; int type; int poll_list_entry; struct wined3d_query_ops const* query_ops; int data_size; void const* data; int state; struct wined3d_device* device; struct wined3d_parent_ops const* parent_ops; void* parent; } ;
struct wined3d_parent_ops {int dummy; } ;
struct wined3d_device {int dummy; } ;
typedef enum wined3d_query_type { ____Placeholder_wined3d_query_type } wined3d_query_type ;
typedef int DWORD ;


 int QUERY_CREATED ;
 int list_init (int *) ;

__attribute__((used)) static void wined3d_query_init(struct wined3d_query *query, struct wined3d_device *device,
        enum wined3d_query_type type, const void *data, DWORD data_size,
        const struct wined3d_query_ops *query_ops, void *parent, const struct wined3d_parent_ops *parent_ops)
{
    query->ref = 1;
    query->parent = parent;
    query->parent_ops = parent_ops;
    query->device = device;
    query->state = QUERY_CREATED;
    query->type = type;
    query->data = data;
    query->data_size = data_size;
    query->query_ops = query_ops;
    list_init(&query->poll_list_entry);
}
