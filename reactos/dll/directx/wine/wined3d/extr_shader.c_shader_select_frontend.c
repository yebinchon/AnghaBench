
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_frontend {int dummy; } ;
typedef enum wined3d_shader_byte_code_format { ____Placeholder_wined3d_shader_byte_code_format } wined3d_shader_byte_code_format ;


 int WARN (char*,int) ;


 struct wined3d_shader_frontend const sm1_shader_frontend ;
 struct wined3d_shader_frontend const sm4_shader_frontend ;

__attribute__((used)) static const struct wined3d_shader_frontend *shader_select_frontend(enum wined3d_shader_byte_code_format format)
{
    switch (format)
    {
        case 129:
            return &sm1_shader_frontend;

        case 128:
            return &sm4_shader_frontend;

        default:
            WARN("Invalid byte code format %#x specified.\n", format);
            return ((void*)0);
    }
}
