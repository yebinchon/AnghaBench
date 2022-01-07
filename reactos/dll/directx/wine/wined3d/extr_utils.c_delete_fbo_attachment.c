
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* glDeleteRenderbuffers ) (int,int *) ;} ;
struct TYPE_4__ {int (* p_glDeleteTextures ) (int,int *) ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_3__ fbo_ops; TYPE_2__ gl_ops; } ;
typedef enum wined3d_gl_resource_type { ____Placeholder_wined3d_gl_resource_type } wined3d_gl_resource_type ;
typedef int GLuint ;
 int stub1 (int,int *) ;
 int stub2 (int,int *) ;

__attribute__((used)) static void delete_fbo_attachment(const struct wined3d_gl_info *gl_info,
        enum wined3d_gl_resource_type d3d_type, GLuint object)
{
    switch (d3d_type)
    {
        case 132:
        case 131:
        case 128:
        case 130:
        case 129:
            gl_info->gl_ops.gl.p_glDeleteTextures(1, &object);
            break;

        case 133:
            gl_info->fbo_ops.glDeleteRenderbuffers(1, &object);
            break;

        case 135:
        case 134:
            break;
    }
}
