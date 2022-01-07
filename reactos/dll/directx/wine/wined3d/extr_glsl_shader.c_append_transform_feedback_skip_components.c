
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;


 int append_transform_feedback_varying (char const**,unsigned int*,char**,unsigned int*,struct wined3d_string_buffer*) ;
 int string_buffer_sprintf (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void append_transform_feedback_skip_components(const char **varyings,
        unsigned int *varying_count, char **strings, unsigned int *strings_length,
        struct wined3d_string_buffer *buffer, unsigned int component_count)
{
    unsigned int j;

    for (j = 0; j < component_count / 4; ++j)
    {
        string_buffer_sprintf(buffer, "gl_SkipComponents4");
        append_transform_feedback_varying(varyings, varying_count, strings, strings_length, buffer);
    }
    if (component_count % 4)
    {
        string_buffer_sprintf(buffer, "gl_SkipComponents%u", component_count % 4);
        append_transform_feedback_varying(varyings, varying_count, strings, strings_length, buffer);
    }
}
