
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_lua_script {int dummy; } ;
struct TYPE_2__ {scalar_t__ script; } ;
struct lua_obs_callback {TYPE_1__ base; } ;



__attribute__((used)) static inline struct obs_lua_script *
lua_obs_callback_script(struct lua_obs_callback *cb)
{
 return (struct obs_lua_script *)cb->base.script;
}
