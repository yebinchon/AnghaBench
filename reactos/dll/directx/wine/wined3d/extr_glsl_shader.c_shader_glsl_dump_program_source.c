
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
typedef char GLuint ;
typedef size_t GLint ;


 int ERR (char*,...) ;
 int FIXME (char*,...) ;
 int GL_ATTACHED_SHADERS ;
 int GL_COMPILE_STATUS ;
 int GL_EXTCALL (int ) ;
 int GL_SHADER_SOURCE_LENGTH ;
 int GL_SHADER_TYPE ;
 int debug_gl_shader_type (size_t) ;
 char* get_info_log_line (char const**) ;
 int glGetAttachedShaders (char,size_t,int *,char*) ;
 int glGetProgramiv (char,int ,size_t*) ;
 int glGetShaderSource (char,size_t,int *,char*) ;
 int glGetShaderiv (char,int ,size_t*) ;
 char* heap_alloc_zero (size_t) ;
 char* heap_calloc (size_t,int) ;
 int heap_free (char*) ;

__attribute__((used)) static void shader_glsl_dump_program_source(const struct wined3d_gl_info *gl_info, GLuint program)
{
    GLint i, shader_count, source_size = -1;
    GLuint *shaders;
    char *source = ((void*)0);

    GL_EXTCALL(glGetProgramiv(program, GL_ATTACHED_SHADERS, &shader_count));
    if (!(shaders = heap_calloc(shader_count, sizeof(*shaders))))
    {
        ERR("Failed to allocate shader array memory.\n");
        return;
    }

    GL_EXTCALL(glGetAttachedShaders(program, shader_count, ((void*)0), shaders));
    for (i = 0; i < shader_count; ++i)
    {
        const char *ptr, *line;
        GLint tmp;

        GL_EXTCALL(glGetShaderiv(shaders[i], GL_SHADER_SOURCE_LENGTH, &tmp));

        if (source_size < tmp)
        {
            heap_free(source);

            if (!(source = heap_alloc_zero(tmp)))
            {
                ERR("Failed to allocate %d bytes for shader source.\n", tmp);
                heap_free(shaders);
                return;
            }
            source_size = tmp;
        }

        FIXME("Shader %u:\n", shaders[i]);
        GL_EXTCALL(glGetShaderiv(shaders[i], GL_SHADER_TYPE, &tmp));
        FIXME("    GL_SHADER_TYPE: %s.\n", debug_gl_shader_type(tmp));
        GL_EXTCALL(glGetShaderiv(shaders[i], GL_COMPILE_STATUS, &tmp));
        FIXME("    GL_COMPILE_STATUS: %d.\n", tmp);
        FIXME("\n");

        ptr = source;
        GL_EXTCALL(glGetShaderSource(shaders[i], source_size, ((void*)0), source));
        while ((line = get_info_log_line(&ptr))) FIXME("    %.*s", (int)(ptr - line), line);
        FIXME("\n");
    }

    heap_free(source);
    heap_free(shaders);
}
