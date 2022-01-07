
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int buffer; } ;


 int heap_free (int ) ;

void string_buffer_free(struct wined3d_string_buffer *buffer)
{
    heap_free(buffer->buffer);
}
