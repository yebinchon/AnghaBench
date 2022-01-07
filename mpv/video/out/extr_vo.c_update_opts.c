
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* driver; scalar_t__ eq_opts_cache; scalar_t__ gl_opts_cache; scalar_t__ opts_cache; } ;
struct TYPE_2__ {int (* control ) (struct vo*,int ,int *) ;} ;


 int VOCTRL_SET_EQUALIZER ;
 int VOCTRL_SET_PANSCAN ;
 int VOCTRL_UPDATE_RENDER_OPTS ;
 scalar_t__ m_config_cache_update (scalar_t__) ;
 int read_opts (struct vo*) ;
 int stub1 (struct vo*,int ,int *) ;
 int stub2 (struct vo*,int ,int *) ;
 int stub3 (struct vo*,int ,int *) ;

__attribute__((used)) static void update_opts(void *p)
{
    struct vo *vo = p;

    if (m_config_cache_update(vo->opts_cache)) {
        read_opts(vo);


        if (vo->driver->control)
            vo->driver->control(vo, VOCTRL_SET_PANSCAN, ((void*)0));
    }

    if (vo->gl_opts_cache && m_config_cache_update(vo->gl_opts_cache)) {

        if (vo->driver->control)
            vo->driver->control(vo, VOCTRL_UPDATE_RENDER_OPTS, ((void*)0));
    }

    if (m_config_cache_update(vo->eq_opts_cache)) {

        if (vo->driver->control)
            vo->driver->control(vo, VOCTRL_SET_EQUALIZER, ((void*)0));
    }
}
