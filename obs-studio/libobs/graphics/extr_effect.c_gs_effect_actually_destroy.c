
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_effect_t ;


 int bfree (int *) ;
 int effect_free (int *) ;

void gs_effect_actually_destroy(gs_effect_t *effect)
{
 effect_free(effect);
 bfree(effect);
}
