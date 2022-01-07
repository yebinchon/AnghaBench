
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_buffer {int dummy; } ;
typedef int DWORD ;


 int wined3d_buffer_invalidate_range (struct wined3d_buffer*,int ,int ,int ) ;

void wined3d_buffer_invalidate_location(struct wined3d_buffer *buffer, DWORD location)
{
    wined3d_buffer_invalidate_range(buffer, location, 0, 0);
}
