
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_device {size_t context_count; struct wined3d_context** contexts; } ;
struct wined3d_context {int dummy; } ;
typedef size_t UINT ;
typedef int BOOL ;


 int ERR (char*,...) ;
 int FALSE ;
 int TRACE (char*,struct wined3d_context*) ;
 int TRUE ;
 int heap_free (struct wined3d_context**) ;
 struct wined3d_context** heap_realloc (struct wined3d_context**,int) ;
 int memmove (struct wined3d_context**,struct wined3d_context**,size_t) ;

void device_context_remove(struct wined3d_device *device, struct wined3d_context *context)
{
    struct wined3d_context **new_array;
    BOOL found = FALSE;
    UINT i;

    TRACE("Removing context %p.\n", context);

    for (i = 0; i < device->context_count; ++i)
    {
        if (device->contexts[i] == context)
        {
            found = TRUE;
            break;
        }
    }

    if (!found)
    {
        ERR("Context %p doesn't exist in context array.\n", context);
        return;
    }

    if (!--device->context_count)
    {
        heap_free(device->contexts);
        device->contexts = ((void*)0);
        return;
    }

    memmove(&device->contexts[i], &device->contexts[i + 1], (device->context_count - i) * sizeof(*device->contexts));
    if (!(new_array = heap_realloc(device->contexts, device->context_count * sizeof(*device->contexts))))
    {
        ERR("Failed to shrink context array. Oh well.\n");
        return;
    }

    device->contexts = new_array;
}
