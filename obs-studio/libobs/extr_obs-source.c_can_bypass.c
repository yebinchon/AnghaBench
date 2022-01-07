
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int obs_source_t ;
typedef enum obs_allow_direct_render { ____Placeholder_obs_allow_direct_render } obs_allow_direct_render ;


 int OBS_ALLOW_DIRECT_RENDERING ;
 int OBS_SOURCE_ASYNC ;
 int OBS_SOURCE_CUSTOM_DRAW ;

__attribute__((used)) static inline bool can_bypass(obs_source_t *target, obs_source_t *parent,
         uint32_t parent_flags,
         enum obs_allow_direct_render allow_direct)
{
 return (target == parent) &&
        (allow_direct == OBS_ALLOW_DIRECT_RENDERING) &&
        ((parent_flags & OBS_SOURCE_CUSTOM_DRAW) == 0) &&
        ((parent_flags & OBS_SOURCE_ASYNC) == 0);
}
