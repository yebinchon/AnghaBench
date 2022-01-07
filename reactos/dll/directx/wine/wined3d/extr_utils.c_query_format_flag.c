
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* p_glGetInternalformativ ) (int ,scalar_t__,int ,int,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ext; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
struct wined3d_format {int * flags; int id; } ;
typedef enum wined3d_gl_resource_type { ____Placeholder_wined3d_gl_resource_type } wined3d_gl_resource_type ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ GL_FULL_SUPPORT ;
 int TRACE (char*,int ,char const*,int) ;
 int debug_d3dformat (int ) ;
 int stub1 (int ,scalar_t__,int ,int,scalar_t__*) ;
 int wined3d_gl_type_to_enum (int) ;

__attribute__((used)) static void query_format_flag(struct wined3d_gl_info *gl_info, struct wined3d_format *format,
        GLint internal, GLenum pname, DWORD flag, const char *string)
{
    GLint value;
    enum wined3d_gl_resource_type type;

    for (type = 0; type < ARRAY_SIZE(format->flags); ++type)
    {
        gl_info->gl_ops.ext.p_glGetInternalformativ(wined3d_gl_type_to_enum(type), internal, pname, 1, &value);
        if (value == GL_FULL_SUPPORT)
        {
            TRACE("Format %s supports %s, resource type %u.\n", debug_d3dformat(format->id), string, type);
            format->flags[type] |= flag;
        }
        else
        {
            TRACE("Format %s doesn't support %s, resource type %u.\n", debug_d3dformat(format->id), string, type);
            format->flags[type] &= ~flag;
        }
    }
}
