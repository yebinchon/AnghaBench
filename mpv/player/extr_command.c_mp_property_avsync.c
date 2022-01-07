
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_2__ {int last_av_difference; int vo_chain; int ao_chain; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_OK ;
 int M_PROPERTY_PRINT ;
 int M_PROPERTY_UNAVAILABLE ;
 int m_property_double_ro (int,void*,int ) ;
 char* talloc_asprintf (int *,char*,int ) ;

__attribute__((used)) static int mp_property_avsync(void *ctx, struct m_property *prop,
                              int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->ao_chain || !mpctx->vo_chain)
        return M_PROPERTY_UNAVAILABLE;
    if (action == M_PROPERTY_PRINT) {
        *(char **)arg = talloc_asprintf(((void*)0), "%7.3f", mpctx->last_av_difference);
        return M_PROPERTY_OK;
    }
    return m_property_double_ro(action, arg, mpctx->last_av_difference);
}
