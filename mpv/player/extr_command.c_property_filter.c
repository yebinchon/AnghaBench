
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct m_property {int name; } ;
struct m_obj_settings {int dummy; } ;
struct m_config_option {scalar_t__ data; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;
struct TYPE_5__ {int mconfig; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_ERROR ;
 int M_PROPERTY_OK ;


 int bstr0 (int ) ;
 struct m_config_option* m_config_get_co (int ,int ) ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 char* print_obj_osd_list (struct m_obj_settings*) ;
 int set_filters (TYPE_1__*,int,struct m_obj_settings*) ;

__attribute__((used)) static int property_filter(struct m_property *prop, int action, void *arg,
                           MPContext *mpctx, enum stream_type mt)
{
    switch (action) {
    case 129: {
        struct m_config_option *opt = m_config_get_co(mpctx->mconfig,
                                                      bstr0(prop->name));
        *(char **)arg = print_obj_osd_list(*(struct m_obj_settings **)opt->data);
        return M_PROPERTY_OK;
    }
    case 128:
        return set_filters(mpctx, mt, *(struct m_obj_settings **)arg) >= 0
            ? M_PROPERTY_OK : M_PROPERTY_ERROR;
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
