
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* p_glGetIntegerv ) (int ,unsigned int*) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {int * supported; TYPE_2__ gl_ops; } ;
struct wined3d_extension_map {size_t extension; int extension_string; } ;
typedef unsigned int GLint ;


 scalar_t__ GL_EXTCALL (int ) ;
 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_a (char const*) ;
 int glGetStringi (int ,unsigned int) ;
 int strcmp (char const*,int ) ;
 int stub1 (int ,unsigned int*) ;

__attribute__((used)) static void enumerate_gl_extensions(struct wined3d_gl_info *gl_info,
        const struct wined3d_extension_map *map, unsigned int map_entries_count)
{
    const char *gl_extension_name;
    unsigned int i, j;
    GLint extensions_count;

    gl_info->gl_ops.gl.p_glGetIntegerv(GL_NUM_EXTENSIONS, &extensions_count);
    for (i = 0; i < extensions_count; ++i)
    {
        gl_extension_name = (const char *)GL_EXTCALL(glGetStringi(GL_EXTENSIONS, i));
        TRACE("- %s.\n", debugstr_a(gl_extension_name));
        for (j = 0; j < map_entries_count; ++j)
        {
            if (!strcmp(gl_extension_name, map[j].extension_string))
            {
                TRACE("FOUND: %s support.\n", map[j].extension_string);
                gl_info->supported[map[j].extension] = TRUE;
                break;
            }
        }
    }
}
