
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int program_lookup; } ;
struct TYPE_12__ {int shader_entry; scalar_t__ id; } ;
struct TYPE_11__ {int shader_entry; scalar_t__ id; } ;
struct TYPE_10__ {int shader_entry; scalar_t__ id; } ;
struct TYPE_9__ {int shader_entry; scalar_t__ id; } ;
struct TYPE_8__ {int shader_entry; scalar_t__ id; } ;
struct TYPE_7__ {int shader_entry; scalar_t__ id; } ;
struct glsl_shader_prog_link {TYPE_6__ cs; TYPE_5__ ps; TYPE_4__ gs; TYPE_3__ ds; TYPE_2__ hs; TYPE_1__ vs; int id; int program_lookup_entry; } ;


 int GL_EXTCALL (int ) ;
 int glDeleteProgram (int ) ;
 int heap_free (struct glsl_shader_prog_link*) ;
 int list_remove (int *) ;
 int wine_rb_remove (int *,int *) ;

__attribute__((used)) static void delete_glsl_program_entry(struct shader_glsl_priv *priv, const struct wined3d_gl_info *gl_info,
        struct glsl_shader_prog_link *entry)
{
    wine_rb_remove(&priv->program_lookup, &entry->program_lookup_entry);

    GL_EXTCALL(glDeleteProgram(entry->id));
    if (entry->vs.id)
        list_remove(&entry->vs.shader_entry);
    if (entry->hs.id)
        list_remove(&entry->hs.shader_entry);
    if (entry->ds.id)
        list_remove(&entry->ds.shader_entry);
    if (entry->gs.id)
        list_remove(&entry->gs.shader_entry);
    if (entry->ps.id)
        list_remove(&entry->ps.shader_entry);
    if (entry->cs.id)
        list_remove(&entry->cs.shader_entry);
    heap_free(entry);
}
