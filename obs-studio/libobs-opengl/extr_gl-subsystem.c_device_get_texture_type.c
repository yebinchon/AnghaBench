
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ gs_texture_t ;
typedef enum gs_texture_type { ____Placeholder_gs_texture_type } gs_texture_type ;



enum gs_texture_type device_get_texture_type(const gs_texture_t *texture)
{
 return texture->type;
}
