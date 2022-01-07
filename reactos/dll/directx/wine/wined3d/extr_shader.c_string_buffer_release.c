
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer_list {int list; } ;
struct wined3d_string_buffer {int entry; } ;


 int list_add_head (int *,int *) ;

void string_buffer_release(struct wined3d_string_buffer_list *list, struct wined3d_string_buffer *buffer)
{
    if (!buffer)
        return;
    list_add_head(&list->list, &buffer->entry);
}
