
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int buffer_size; int buffer; } ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRUE ;
 int heap_alloc (int) ;
 int string_buffer_clear (struct wined3d_string_buffer*) ;

BOOL string_buffer_init(struct wined3d_string_buffer *buffer)
{
    buffer->buffer_size = 32;
    if (!(buffer->buffer = heap_alloc(buffer->buffer_size)))
    {
        ERR("Failed to allocate shader buffer memory.\n");
        return FALSE;
    }

    string_buffer_clear(buffer);
    return TRUE;
}
