
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_gl_info {int * supported; } ;
struct wined3d_format {int component_count; int gl_vtx_type; int attribute_size; int gl_normalized; int gl_vtx_format; int emit_idx; } ;
struct TYPE_3__ {size_t extension; int id; int gl_normalized; int component_count; int gl_vtx_type; int emit_idx; } ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int ERR (char*,int ,int ) ;
 int FALSE ;
 int TRUE ;
 int calculate_vertex_attribute_size (int ,int ) ;
 int debug_d3dformat (int ) ;
 TYPE_1__* format_vertex_info ;
 struct wined3d_format* get_format_internal (struct wined3d_gl_info*,int ) ;

__attribute__((used)) static BOOL init_format_vertex_info(struct wined3d_gl_info *gl_info)
{
    struct wined3d_format *format;
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(format_vertex_info); ++i)
    {
        if (!(format = get_format_internal(gl_info, format_vertex_info[i].id)))
            return FALSE;

        if (!gl_info->supported[format_vertex_info[i].extension])
            continue;

        format->emit_idx = format_vertex_info[i].emit_idx;
        format->component_count = format_vertex_info[i].component_count;
        format->gl_vtx_type = format_vertex_info[i].gl_vtx_type;
        format->gl_vtx_format = format_vertex_info[i].component_count;
        format->gl_normalized = format_vertex_info[i].gl_normalized;
        if (!(format->attribute_size = calculate_vertex_attribute_size(format->gl_vtx_type,
                format->component_count)))
        {
            ERR("Invalid attribute size for vertex format %s (%#x).\n",
                    debug_d3dformat(format_vertex_info[i].id), format_vertex_info[i].id);
            return FALSE;
        }
    }

    return TRUE;
}
