
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int quirks; } ;
typedef int GLuint ;
typedef scalar_t__ BOOL ;


 int FIXME (char*,int,...) ;
 int FIXME_ON (int ) ;
 int GL_EXTCALL (int ) ;
 int GL_INFO_LOG_LENGTH ;
 int WARN (char*,int,...) ;
 int WARN_ON (int ) ;
 int WINED3D_QUIRK_INFO_LOG_SPAM ;
 int d3d_shader ;
 char* get_info_log_line (char const**) ;
 int glGetProgramInfoLog (int ,int,int *,char*) ;
 int glGetProgramiv (int ,int ,int*) ;
 int glGetShaderInfoLog (int ,int,int *,char*) ;
 int glGetShaderiv (int ,int ,int*) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;

void print_glsl_info_log(const struct wined3d_gl_info *gl_info, GLuint id, BOOL program)
{
    int length = 0;
    char *log;

    if (!WARN_ON(d3d_shader) && !FIXME_ON(d3d_shader))
        return;

    if (program)
        GL_EXTCALL(glGetProgramiv(id, GL_INFO_LOG_LENGTH, &length));
    else
        GL_EXTCALL(glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length));



    if (length > 1)
    {
        const char *ptr, *line;

        log = heap_alloc(length);




        log[length - 1] = 0;
        if (program)
            GL_EXTCALL(glGetProgramInfoLog(id, length, ((void*)0), log));
        else
            GL_EXTCALL(glGetShaderInfoLog(id, length, ((void*)0), log));

        ptr = log;
        if (gl_info->quirks & WINED3D_QUIRK_INFO_LOG_SPAM)
        {
            WARN("Info log received from GLSL shader #%u:\n", id);
            while ((line = get_info_log_line(&ptr))) WARN("    %.*s", (int)(ptr - line), line);
        }
        else
        {
            FIXME("Info log received from GLSL shader #%u:\n", id);
            while ((line = get_info_log_line(&ptr))) FIXME("    %.*s", (int)(ptr - line), line);
        }
        heap_free(log);
    }
}
