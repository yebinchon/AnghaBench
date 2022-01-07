
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct wined3d_string_buffer {unsigned int buffer_size; unsigned int content_size; int * buffer; } ;


 int vsnprintf (int *,unsigned int,char const*,int ) ;

int shader_vaddline(struct wined3d_string_buffer *buffer, const char *format, va_list args)
{
    unsigned int rem;
    int rc;

    rem = buffer->buffer_size - buffer->content_size;
    rc = vsnprintf(&buffer->buffer[buffer->content_size], rem, format, args);
    if (rc < 0 || (unsigned int)rc >= rem )
        return rc;

    buffer->content_size += rc;
    return 0;
}
