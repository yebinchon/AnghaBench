
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int buffer; } ;
struct wined3d_gl_info {int dummy; } ;
struct arbfp_blit_type {scalar_t__ use_color_key; int res_type; } ;
typedef int GLuint ;


 int ERR (char*) ;
 int FIXME (char*) ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 char* arbfp_texture_target (int ) ;
 int glBindProgramARB (int ,int ) ;
 int glGenProgramsARB (int,int *) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_compile (struct wined3d_gl_info const*,int ,int ) ;
 int string_buffer_free (struct wined3d_string_buffer*) ;
 int string_buffer_init (struct wined3d_string_buffer*) ;

__attribute__((used)) static GLuint gen_p8_shader(const struct wined3d_gl_info *gl_info, const struct arbfp_blit_type *type)
{
    GLuint shader;
    struct wined3d_string_buffer buffer;
    const char *tex_target = arbfp_texture_target(type->res_type);



    if (type->use_color_key)
        FIXME("Implement P8 color keying.\n");


    if (!string_buffer_init(&buffer))
    {
        ERR("Failed to initialize shader buffer.\n");
        return 0;
    }

    GL_EXTCALL(glGenProgramsARB(1, &shader));
    GL_EXTCALL(glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, shader));
    if (!shader)
    {
        string_buffer_free(&buffer);
        return 0;
    }

    shader_addline(&buffer, "!!ARBfp1.0\n");
    shader_addline(&buffer, "TEMP index;\n");


    shader_addline(&buffer, "PARAM constants = { 0.996, 0.00195, 0, 0 };\n");


    shader_addline(&buffer, "TEX index, fragment.texcoord[0], texture[0], %s;\n", tex_target);


    shader_addline(&buffer, "MAD index.a, index.a, constants.x, constants.y;\n");


    shader_addline(&buffer, "TEX result.color, index.a, texture[1], 1D;\n");
    shader_addline(&buffer, "END\n");

    shader_arb_compile(gl_info, GL_FRAGMENT_PROGRAM_ARB, buffer.buffer);

    string_buffer_free(&buffer);

    return shader;
}
