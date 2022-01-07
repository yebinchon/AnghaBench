
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; } ;
typedef TYPE_1__ gs_texture_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;



enum gs_color_format
gs_cubetexture_get_color_format(const gs_texture_t *cubetex)
{
 return cubetex->format;
}
