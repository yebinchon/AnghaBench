
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_texture_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GS_UNKNOWN ;
 int UNUSED_PARAMETER (int const*) ;

enum gs_color_format gs_voltexture_get_color_format(const gs_texture_t *voltex)
{

 UNUSED_PARAMETER(voltex);
 return GS_UNKNOWN;
}
