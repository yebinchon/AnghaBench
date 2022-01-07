
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * transition_texrender; } ;
typedef TYPE_1__ obs_source_t ;
typedef int gs_texture_t ;
typedef enum obs_transition_target { ____Placeholder_obs_transition_target } obs_transition_target ;


 int * gs_texrender_get_texture (int ) ;

__attribute__((used)) static inline gs_texture_t *get_texture(obs_source_t *transition,
     enum obs_transition_target target)
{
 size_t idx = (size_t)target;
 return gs_texrender_get_texture(transition->transition_texrender[idx]);
}
