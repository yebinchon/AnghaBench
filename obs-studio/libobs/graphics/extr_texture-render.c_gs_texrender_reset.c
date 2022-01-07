
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rendered; } ;
typedef TYPE_1__ gs_texrender_t ;



void gs_texrender_reset(gs_texrender_t *texrender)
{
 if (texrender)
  texrender->rendered = 0;
}
