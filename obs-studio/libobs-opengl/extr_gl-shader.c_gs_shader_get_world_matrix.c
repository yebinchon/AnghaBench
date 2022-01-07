
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_sparam_t ;
struct TYPE_3__ {int * world; } ;
typedef TYPE_1__ gs_shader_t ;



gs_sparam_t *gs_shader_get_world_matrix(const gs_shader_t *shader)
{
 return shader->world;
}
