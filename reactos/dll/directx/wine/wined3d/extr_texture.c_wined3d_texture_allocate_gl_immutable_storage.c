
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {int target; int level_count; int layer_count; } ;
struct wined3d_gl_info {int dummy; } ;
typedef int GLsizei ;
typedef int GLenum ;


 int GL_EXTCALL (int ) ;
 int GL_FALSE ;



 int checkGLcall (char*) ;
 int glTexStorage2D (int,int ,int ,int ,int ) ;
 int glTexStorage2DMultisample (int,unsigned int,int ,int ,int ,int ) ;
 int glTexStorage3D (int,int ,int ,int ,int ,int ) ;
 int glTexStorage3DMultisample (int,unsigned int,int ,int ,int ,int ,int ) ;
 unsigned int wined3d_texture_get_gl_sample_count (struct wined3d_texture*) ;
 int wined3d_texture_get_level_pow2_height (struct wined3d_texture*,int ) ;
 int wined3d_texture_get_level_pow2_width (struct wined3d_texture*,int ) ;

__attribute__((used)) static void wined3d_texture_allocate_gl_immutable_storage(struct wined3d_texture *texture,
        GLenum gl_internal_format, const struct wined3d_gl_info *gl_info)
{
    unsigned int samples = wined3d_texture_get_gl_sample_count(texture);
    GLsizei height = wined3d_texture_get_level_pow2_height(texture, 0);
    GLsizei width = wined3d_texture_get_level_pow2_width(texture, 0);

    switch (texture->target)
    {
        case 130:
            GL_EXTCALL(glTexStorage3D(texture->target, texture->level_count,
                    gl_internal_format, width, height, texture->layer_count));
            break;
        case 129:
            GL_EXTCALL(glTexStorage2DMultisample(texture->target, samples,
                    gl_internal_format, width, height, GL_FALSE));
            break;
        case 128:
            GL_EXTCALL(glTexStorage3DMultisample(texture->target, samples,
                    gl_internal_format, width, height, texture->layer_count, GL_FALSE));
            break;
        default:
            GL_EXTCALL(glTexStorage2D(texture->target, texture->level_count,
                    gl_internal_format, width, height));
            break;
    }

    checkGLcall("allocate immutable storage");
}
