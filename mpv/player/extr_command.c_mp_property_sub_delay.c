
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct MPOpts {TYPE_1__* subs_rend; } ;
struct TYPE_5__ {struct MPOpts* opts; } ;
struct TYPE_4__ {int sub_delay; } ;
typedef TYPE_2__ MPContext ;


 int M_PROPERTY_OK ;

 char* format_delay (int ) ;
 int mp_property_generic_option (TYPE_2__*,struct m_property*,int,void*) ;

__attribute__((used)) static int mp_property_sub_delay(void *ctx, struct m_property *prop,
                                 int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct MPOpts *opts = mpctx->opts;
    switch (action) {
    case 128:
        *(char **)arg = format_delay(opts->subs_rend->sub_delay);
        return M_PROPERTY_OK;
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
