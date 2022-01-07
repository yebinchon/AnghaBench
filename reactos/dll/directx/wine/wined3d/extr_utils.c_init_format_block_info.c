
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int block_byte_count; int block_height; int block_width; } ;
struct TYPE_3__ {int verify; int block_byte_count; int block_height; int block_width; int id; } ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int FALSE ;
 int TRUE ;
 int WINED3DFMT_FLAG_BLOCKS ;
 int WINED3DFMT_FLAG_BLOCKS_NO_VERIFY ;
 TYPE_1__* format_block_info ;
 int format_set_flag (struct wined3d_format*,int ) ;
 struct wined3d_format* get_format_internal (struct wined3d_gl_info*,int ) ;

__attribute__((used)) static BOOL init_format_block_info(struct wined3d_gl_info *gl_info)
{
    struct wined3d_format *format;
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(format_block_info); ++i)
    {
        if (!(format = get_format_internal(gl_info, format_block_info[i].id)))
            return FALSE;

        format->block_width = format_block_info[i].block_width;
        format->block_height = format_block_info[i].block_height;
        format->block_byte_count = format_block_info[i].block_byte_count;
        format_set_flag(format, WINED3DFMT_FLAG_BLOCKS);
        if (!format_block_info[i].verify)
            format_set_flag(format, WINED3DFMT_FLAG_BLOCKS_NO_VERIFY);
    }

    return TRUE;
}
