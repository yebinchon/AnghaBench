
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {char* priv; } ;
struct TYPE_2__ {double speed_factor_a; double speed_factor_v; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_OK ;
 int M_PROPERTY_PRINT ;
 int abort () ;
 int m_property_double_ro (int,void*,double) ;
 char* talloc_asprintf (int *,char*,double) ;

__attribute__((used)) static int mp_property_av_speed_correction(void *ctx, struct m_property *prop,
                                           int action, void *arg)
{
    MPContext *mpctx = ctx;
    char *type = prop->priv;
    double val = 0;
    switch (type[0]) {
    case 'a': val = mpctx->speed_factor_a; break;
    case 'v': val = mpctx->speed_factor_v; break;
    default: abort();
    }

    if (action == M_PROPERTY_PRINT) {
        *(char **)arg = talloc_asprintf(((void*)0), "%+.05f%%", (val - 1) * 100);
        return M_PROPERTY_OK;
    }

    return m_property_double_ro(action, arg, val);
}
