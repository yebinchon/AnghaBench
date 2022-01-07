
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* device; } ;
typedef TYPE_2__ gs_samplerstate_t ;
struct TYPE_5__ {TYPE_2__** cur_samplers; } ;


 int GS_MAX_TEXTURES ;
 int samplerstate_release (TYPE_2__*) ;

void gs_samplerstate_destroy(gs_samplerstate_t *samplerstate)
{
 if (!samplerstate)
  return;

 if (samplerstate->device)
  for (int i = 0; i < GS_MAX_TEXTURES; i++)
   if (samplerstate->device->cur_samplers[i] ==
       samplerstate)
    samplerstate->device->cur_samplers[i] = ((void*)0);

 samplerstate_release(samplerstate);
}
