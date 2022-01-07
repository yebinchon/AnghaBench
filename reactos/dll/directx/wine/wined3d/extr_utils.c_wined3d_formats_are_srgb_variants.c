
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
struct TYPE_3__ {int srgb_format_id; int base_format_id; } ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int FALSE ;
 TYPE_1__* format_srgb_info ;

BOOL wined3d_formats_are_srgb_variants(enum wined3d_format_id format1, enum wined3d_format_id format2)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(format_srgb_info); ++i)
    {
        if (format1 == format_srgb_info[i].srgb_format_id)
            return format2 == format_srgb_info[i].base_format_id;
        if (format1 == format_srgb_info[i].base_format_id)
            return format2 == format_srgb_info[i].srgb_format_id;
    }
    return FALSE;
}
