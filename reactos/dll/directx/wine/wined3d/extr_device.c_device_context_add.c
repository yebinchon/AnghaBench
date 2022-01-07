
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_device {int context_count; struct wined3d_context** contexts; } ;
struct wined3d_context {int dummy; } ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRACE (char*,struct wined3d_context*) ;
 int TRUE ;
 struct wined3d_context** heap_realloc (struct wined3d_context**,int) ;

BOOL device_context_add(struct wined3d_device *device, struct wined3d_context *context)
{
    struct wined3d_context **new_array;

    TRACE("Adding context %p.\n", context);

    if (!(new_array = heap_realloc(device->contexts, sizeof(*new_array) * (device->context_count + 1))))
    {
        ERR("Failed to grow the context array.\n");
        return FALSE;
    }

    new_array[device->context_count++] = context;
    device->contexts = new_array;
    return TRUE;
}
