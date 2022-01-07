
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_texture_t ;
struct TYPE_3__ {int * texture; } ;
typedef TYPE_1__ gs_sparam_t ;



void gs_shader_set_texture(gs_sparam_t *param, gs_texture_t *val)
{
 param->texture = val;
}
