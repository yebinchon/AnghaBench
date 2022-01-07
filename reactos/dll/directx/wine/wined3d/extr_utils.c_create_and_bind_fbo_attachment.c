
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* p_glGetError ) () ;int (* p_glTexParameteri ) (int ,int ,int ) ;int (* p_glTexImage2D ) (int ,int ,int ,int,int,int ,int ,int ,int *) ;int (* p_glBindTexture ) (int ,int ) ;int (* p_glGenTextures ) (int,int *) ;int (* p_glTexImage1D ) (int ,int ,int ,int,int ,int ,int ,int *) ;} ;
struct TYPE_6__ {TYPE_2__ gl; } ;
struct TYPE_4__ {int (* glFramebufferRenderbuffer ) (int ,int ,int ,int ) ;int (* glRenderbufferStorage ) (int ,int ,int,int) ;int (* glBindRenderbuffer ) (int ,int ) ;int (* glGenRenderbuffers ) (int,int *) ;int (* glFramebufferTexture2D ) (int ,int ,int ,int ,int ) ;int (* glFramebufferTexture3D ) (int ,int ,int ,int ,int ,int ) ;int (* glFramebufferTexture1D ) (int ,int ,int ,int ,int ) ;} ;
struct wined3d_gl_info {TYPE_3__ gl_ops; TYPE_1__ fbo_ops; } ;
typedef enum wined3d_gl_resource_type { ____Placeholder_wined3d_gl_resource_type } wined3d_gl_resource_type ;
typedef int GLuint ;
typedef int GLenum ;


 int GL_COLOR_ATTACHMENT0 ;
 int GL_DEPTH_ATTACHMENT ;
 int GL_EXTCALL (int ) ;
 int GL_FRAMEBUFFER ;
 int GL_NEAREST ;
 int GL_RENDERBUFFER ;
 int GL_STENCIL_ATTACHMENT ;
 int GL_TEXTURE_1D ;
 int GL_TEXTURE_3D ;
 int GL_TEXTURE_CUBE_MAP_ARB ;
 int GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB ;
 int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB ;
 int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB ;
 int GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB ;
 int GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB ;
 int GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 unsigned int WINED3DFMT_FLAG_DEPTH ;
 unsigned int WINED3DFMT_FLAG_STENCIL ;
 int glTexImage3D (int ,int ,int ,int,int,int,int ,int ,int ,int *) ;
 int stub1 (int,int *) ;
 int stub10 (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int stub11 (int ,int ,int ) ;
 int stub12 (int ,int ,int ) ;
 int stub13 (int ,int ,int ,int ,int ) ;
 int stub14 (int ,int ,int ,int ,int ) ;
 int stub15 (int,int *) ;
 int stub16 (int ,int ) ;
 int stub17 (int ,int ,int ) ;
 int stub18 (int ,int ,int ) ;
 int stub19 (int ,int ,int ,int ,int ,int ) ;
 int stub2 (int ,int ) ;
 int stub20 (int ,int ,int ,int ,int ,int ) ;
 int stub21 (int,int *) ;
 int stub22 (int ,int ) ;
 int stub23 (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int stub24 (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int stub25 (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int stub26 (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int stub27 (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int stub28 (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int stub29 (int ,int ,int ) ;
 int stub3 (int ,int ,int ,int,int ,int ,int ,int *) ;
 int stub30 (int ,int ,int ) ;
 int stub31 (int ,int ,int ,int ,int ) ;
 int stub32 (int ,int ,int ,int ,int ) ;
 int stub33 (int,int *) ;
 int stub34 (int ,int ) ;
 int stub35 (int ,int ,int,int) ;
 int stub36 (int ,int ,int ,int ) ;
 int stub37 (int ,int ,int ,int ) ;
 scalar_t__ stub38 () ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ,int ,int ) ;
 int stub7 (int ,int ,int ,int ,int ) ;
 int stub8 (int,int *) ;
 int stub9 (int ,int ) ;
 int wined3d_gl_type_to_enum (int) ;

__attribute__((used)) static void create_and_bind_fbo_attachment(const struct wined3d_gl_info *gl_info, unsigned int flags,
        enum wined3d_gl_resource_type d3d_type, GLuint *object, GLenum internal, GLenum format, GLenum type)
{
    GLenum attach_type = flags & WINED3DFMT_FLAG_DEPTH ?
            GL_DEPTH_ATTACHMENT : GL_COLOR_ATTACHMENT0;

    switch (d3d_type)
    {
        case 132:
            gl_info->gl_ops.gl.p_glGenTextures(1, object);
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_1D, *object);
            gl_info->gl_ops.gl.p_glTexImage1D(GL_TEXTURE_1D, 0, internal, 16, 0, format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
            gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

            gl_info->fbo_ops.glFramebufferTexture1D(GL_FRAMEBUFFER, attach_type, GL_TEXTURE_1D,
                    *object, 0);
            if (flags & WINED3DFMT_FLAG_STENCIL)
                gl_info->fbo_ops.glFramebufferTexture1D(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_TEXTURE_1D,
                        *object, 0);
            break;

        case 131:
        case 128:
            gl_info->gl_ops.gl.p_glGenTextures(1, object);
            gl_info->gl_ops.gl.p_glBindTexture(wined3d_gl_type_to_enum(d3d_type), *object);
            gl_info->gl_ops.gl.p_glTexImage2D(wined3d_gl_type_to_enum(d3d_type), 0, internal, 16, 16, 0,
                    format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexParameteri(wined3d_gl_type_to_enum(d3d_type), GL_TEXTURE_MIN_FILTER, GL_NEAREST);
            gl_info->gl_ops.gl.p_glTexParameteri(wined3d_gl_type_to_enum(d3d_type), GL_TEXTURE_MAG_FILTER, GL_NEAREST);

            gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, attach_type,
                    wined3d_gl_type_to_enum(d3d_type), *object, 0);
            if (flags & WINED3DFMT_FLAG_STENCIL)
                gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT,
                        wined3d_gl_type_to_enum(d3d_type), *object, 0);
            break;

        case 130:
            gl_info->gl_ops.gl.p_glGenTextures(1, object);
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_3D, *object);
            GL_EXTCALL(glTexImage3D(GL_TEXTURE_3D, 0, internal, 16, 16, 16, 0, format, type, ((void*)0)));
            gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
            gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

            gl_info->fbo_ops.glFramebufferTexture3D(GL_FRAMEBUFFER, attach_type,
                    GL_TEXTURE_3D, *object, 0, 0);
            if (flags & WINED3DFMT_FLAG_STENCIL)
                gl_info->fbo_ops.glFramebufferTexture3D(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT,
                        GL_TEXTURE_3D, *object, 0, 0);
            break;

        case 129:
            gl_info->gl_ops.gl.p_glGenTextures(1, object);
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_CUBE_MAP_ARB, *object);
            gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB, 0, internal, 16, 16, 0,
                    format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB, 0, internal, 16, 16, 0,
                    format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB, 0, internal, 16, 16, 0,
                    format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB, 0, internal, 16, 16, 0,
                    format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB, 0, internal, 16, 16, 0,
                    format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB, 0, internal, 16, 16, 0,
                    format, type, ((void*)0));
            gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_CUBE_MAP_ARB, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
            gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_CUBE_MAP_ARB, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

            gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, attach_type,
                    GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB, *object, 0);
            if (flags & WINED3DFMT_FLAG_STENCIL)
                gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT,
                        GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB, *object, 0);
            break;

        case 133:
            gl_info->fbo_ops.glGenRenderbuffers(1, object);
            gl_info->fbo_ops.glBindRenderbuffer(GL_RENDERBUFFER, *object);
            gl_info->fbo_ops.glRenderbufferStorage(GL_RENDERBUFFER, internal, 16, 16);
            gl_info->fbo_ops.glFramebufferRenderbuffer(GL_FRAMEBUFFER, attach_type, GL_RENDERBUFFER,
                    *object);
            if (flags & WINED3DFMT_FLAG_STENCIL)
                gl_info->fbo_ops.glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_RENDERBUFFER,
                        *object);
            break;

        case 135:
        case 134:
            break;
    }






    while (gl_info->gl_ops.gl.p_glGetError());
}
