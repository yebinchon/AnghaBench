
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int buffer; } ;
struct wined3d_gl_info {int dummy; } ;
struct arbfp_blit_type {int fixup; scalar_t__ use_color_key; } ;
typedef int GLuint ;


 int ARBFP_BLIT_PARAM_SIZE ;




 int ERR (char*) ;
 int FIXME (char*,...) ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 int checkGLcall (char*) ;
 int gen_nv12_read (struct wined3d_string_buffer*,struct arbfp_blit_type const*,char*) ;
 int gen_planar_yuv_read (struct wined3d_string_buffer*,struct arbfp_blit_type const*,char*) ;
 int gen_yv12_read (struct wined3d_string_buffer*,struct arbfp_blit_type const*,char*) ;
 int glBindProgramARB (int ,int ) ;
 int glGenProgramsARB (int,int *) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_compile (struct wined3d_gl_info const*,int ,int ) ;
 int string_buffer_free (struct wined3d_string_buffer*) ;
 int string_buffer_init (struct wined3d_string_buffer*) ;

__attribute__((used)) static GLuint gen_yuv_shader(const struct wined3d_gl_info *gl_info, const struct arbfp_blit_type *type)
{
    GLuint shader;
    struct wined3d_string_buffer buffer;
    char luminance_component;

    if (type->use_color_key)
        FIXME("Implement YUV color keying.\n");


    if (!string_buffer_init(&buffer))
    {
        ERR("Failed to initialize shader buffer.\n");
        return 0;
    }

    GL_EXTCALL(glGenProgramsARB(1, &shader));
    checkGLcall("GL_EXTCALL(glGenProgramsARB(1, &shader))");
    GL_EXTCALL(glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, shader));
    checkGLcall("glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, shader)");
    if (!shader)
    {
        string_buffer_free(&buffer);
        return 0;
    }
    shader_addline(&buffer, "!!ARBfp1.0\n");
    shader_addline(&buffer, "TEMP luminance;\n");
    shader_addline(&buffer, "TEMP temp;\n");
    shader_addline(&buffer, "TEMP chroma;\n");
    shader_addline(&buffer, "TEMP texcrd;\n");
    shader_addline(&buffer, "TEMP texcrd2;\n");
    shader_addline(&buffer, "PARAM coef = {1.0, 0.5, 2.0, 0.25};\n");
    shader_addline(&buffer, "PARAM yuv_coef = {1.403, 0.344, 0.714, 1.770};\n");
    shader_addline(&buffer, "PARAM size = program.local[%u];\n", ARBFP_BLIT_PARAM_SIZE);

    switch (type->fixup)
    {
        case 130:
        case 129:
            if (!gen_planar_yuv_read(&buffer, type, &luminance_component))
            {
                string_buffer_free(&buffer);
                return 0;
            }
            break;

        case 128:
            if (!gen_yv12_read(&buffer, type, &luminance_component))
            {
                string_buffer_free(&buffer);
                return 0;
            }
            break;

        case 131:
            if (!gen_nv12_read(&buffer, type, &luminance_component))
            {
                string_buffer_free(&buffer);
                return 0;
            }
            break;

        default:
            FIXME("Unsupported YUV fixup %#x\n", type->fixup);
            string_buffer_free(&buffer);
            return 0;
    }





    shader_addline(&buffer, "SUB chroma.xy, chroma, coef.y;\n");

    shader_addline(&buffer, "MAD result.color.x, chroma.x, yuv_coef.x, luminance.%c;\n", luminance_component);
    shader_addline(&buffer, "MAD temp.x, -chroma.y, yuv_coef.y, luminance.%c;\n", luminance_component);
    shader_addline(&buffer, "MAD result.color.y, -chroma.x, yuv_coef.z, temp.x;\n");
    shader_addline(&buffer, "MAD result.color.z, chroma.y, yuv_coef.w, luminance.%c;\n", luminance_component);
    shader_addline(&buffer, "END\n");

    shader_arb_compile(gl_info, GL_FRAGMENT_PROGRAM_ARB, buffer.buffer);

    string_buffer_free(&buffer);

    return shader;
}
