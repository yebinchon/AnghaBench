
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* glFramebufferTexture2D ) (int ,int ,int ,int ,int ) ;int (* glFramebufferTexture1D ) (int ,int ,int ,int ,int ) ;int (* glFramebufferTextureLayer ) (int ,int ,int ,int ,int ) ;int (* glFramebufferTexture ) (int ,int ,int ,int ) ;} ;
struct wined3d_gl_info {TYPE_1__ fbo_ops; } ;
struct wined3d_fbo_resource {int level; int object; int target; int layer; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef int GLenum ;


 int FIXME (char*) ;
 int GL_TEXTURE_1D ;
 int GL_TEXTURE_1D_ARRAY ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_2D_ARRAY ;
 int GL_TEXTURE_3D ;
 int WINED3D_ALL_LAYERS ;
 int checkGLcall (char*) ;
 int stub1 (int ,int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;
 int stub3 (int ,int ,int ,int ,int ) ;
 int stub4 (int ,int ,int ,int ,int ) ;
 int stub5 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void context_attach_gl_texture_fbo(struct wined3d_context *context,
        GLenum fbo_target, GLenum attachment, const struct wined3d_fbo_resource *resource)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (!resource)
    {
        gl_info->fbo_ops.glFramebufferTexture2D(fbo_target, attachment, GL_TEXTURE_2D, 0, 0);
    }
    else if (resource->layer == WINED3D_ALL_LAYERS)
    {
        if (!gl_info->fbo_ops.glFramebufferTexture)
        {
            FIXME("OpenGL implementation doesn't support glFramebufferTexture().\n");
            return;
        }

        gl_info->fbo_ops.glFramebufferTexture(fbo_target, attachment,
                resource->object, resource->level);
    }
    else if (resource->target == GL_TEXTURE_1D_ARRAY || resource->target == GL_TEXTURE_2D_ARRAY ||
            resource->target == GL_TEXTURE_3D)
    {
        if (!gl_info->fbo_ops.glFramebufferTextureLayer)
        {
            FIXME("OpenGL implementation doesn't support glFramebufferTextureLayer().\n");
            return;
        }

        gl_info->fbo_ops.glFramebufferTextureLayer(fbo_target, attachment,
                resource->object, resource->level, resource->layer);
    }
    else if (resource->target == GL_TEXTURE_1D)
    {
        gl_info->fbo_ops.glFramebufferTexture1D(fbo_target, attachment,
                resource->target, resource->object, resource->level);
        checkGLcall("glFramebufferTexture1D()");
    }
    else
    {
        gl_info->fbo_ops.glFramebufferTexture2D(fbo_target, attachment,
                resource->target, resource->object, resource->level);
    }
    checkGLcall("attach texture to fbo");
}
