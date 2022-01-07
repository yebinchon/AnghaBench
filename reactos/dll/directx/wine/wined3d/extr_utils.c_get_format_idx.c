
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
struct TYPE_3__ {int id; int idx; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int WINED3D_FORMAT_FOURCC_BASE ;
 TYPE_1__* format_index_remap ;

__attribute__((used)) static inline int get_format_idx(enum wined3d_format_id format_id)
{
    unsigned int i;

    if (format_id < WINED3D_FORMAT_FOURCC_BASE)
        return format_id;

    for (i = 0; i < ARRAY_SIZE(format_index_remap); ++i)
    {
        if (format_index_remap[i].id == format_id)
            return format_index_remap[i].idx;
    }

    return -1;
}
