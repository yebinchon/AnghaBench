
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_texture_t ;
struct TYPE_3__ {int * target; } ;
typedef TYPE_1__ gs_texrender_t ;



gs_texture_t *gs_texrender_get_texture(const gs_texrender_t *texrender)
{
 return texrender ? texrender->target : ((void*)0);
}
