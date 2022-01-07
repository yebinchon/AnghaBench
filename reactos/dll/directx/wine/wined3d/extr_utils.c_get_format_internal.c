
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {struct wined3d_format* formats; } ;
struct wined3d_format {int dummy; } ;
typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;


 int ERR (char*,int ,int) ;
 int debug_d3dformat (int) ;
 int get_format_idx (int) ;

__attribute__((used)) static struct wined3d_format *get_format_internal(struct wined3d_gl_info *gl_info,
        enum wined3d_format_id format_id)
{
    int fmt_idx;

    if ((fmt_idx = get_format_idx(format_id)) == -1)
    {
        ERR("Format %s (%#x) not found.\n", debug_d3dformat(format_id), format_id);
        return ((void*)0);
    }

    return &gl_info->formats[fmt_idx];
}
