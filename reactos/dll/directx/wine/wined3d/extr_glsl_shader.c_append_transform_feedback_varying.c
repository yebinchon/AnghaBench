
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {scalar_t__ content_size; int buffer; } ;


 int memcpy (char*,int ,scalar_t__) ;

__attribute__((used)) static void append_transform_feedback_varying(const char **varyings, unsigned int *varying_count,
        char **strings, unsigned int *strings_length, struct wined3d_string_buffer *buffer)
{
    if (varyings && *strings)
    {
        char *ptr = *strings;

        varyings[*varying_count] = ptr;

        memcpy(ptr, buffer->buffer, buffer->content_size + 1);
        ptr += buffer->content_size + 1;

        *strings = ptr;
    }

    *strings_length += buffer->content_size + 1;
    ++(*varying_count);
}
