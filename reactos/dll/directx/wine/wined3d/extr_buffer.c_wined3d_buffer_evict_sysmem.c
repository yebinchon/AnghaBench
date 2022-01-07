
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_buffer {int flags; int resource; } ;


 int TRACE (char*,struct wined3d_buffer*) ;
 int WINED3D_BUFFER_PIN_SYSMEM ;
 int WINED3D_LOCATION_SYSMEM ;
 int wined3d_buffer_invalidate_location (struct wined3d_buffer*,int ) ;
 int wined3d_resource_free_sysmem (int *) ;

__attribute__((used)) static void wined3d_buffer_evict_sysmem(struct wined3d_buffer *buffer)
{
    if (buffer->flags & WINED3D_BUFFER_PIN_SYSMEM)
    {
        TRACE("Not evicting system memory for buffer %p.\n", buffer);
        return;
    }

    TRACE("Evicting system memory for buffer %p.\n", buffer);
    wined3d_buffer_invalidate_location(buffer, WINED3D_LOCATION_SYSMEM);
    wined3d_resource_free_sysmem(&buffer->resource);
}
