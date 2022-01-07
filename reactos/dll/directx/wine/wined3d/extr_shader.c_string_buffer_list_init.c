
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer_list {int list; } ;


 int list_init (int *) ;

void string_buffer_list_init(struct wined3d_string_buffer_list *list)
{
    list_init(&list->list);
}
