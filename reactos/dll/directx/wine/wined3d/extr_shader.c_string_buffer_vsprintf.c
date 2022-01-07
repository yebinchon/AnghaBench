
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct wined3d_string_buffer {int dummy; } ;


 int shader_vaddline (struct wined3d_string_buffer*,char const*,int ) ;
 int string_buffer_clear (struct wined3d_string_buffer*) ;

__attribute__((used)) static int string_buffer_vsprintf(struct wined3d_string_buffer *buffer, const char *format, va_list args)
{
    if (!buffer)
        return 0;
    string_buffer_clear(buffer);
    return shader_vaddline(buffer, format, args);
}
