
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union m_option_value {int member_0; } ;
struct TYPE_3__ {int string; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;
struct m_config_option {int opt; } ;
struct m_config {int log; } ;
typedef int bstr ;
struct TYPE_4__ {char* (* print ) (int *,struct mpv_node*) ;} ;


 int BSTR_P (int ) ;
 scalar_t__ MPV_FORMAT_STRING ;
 int MP_DBG (struct m_config*,char*,int ,char*,int,int) ;
 int MSGL_V ;
 int M_OPT_UNKNOWN ;
 int bstr0 (int ) ;
 struct m_config_option* m_config_get_co (struct m_config*,int ) ;
 int m_config_set_option_raw (struct m_config*,struct m_config_option*,union m_option_value*,int) ;
 int m_option_free (int ,union m_option_value*) ;
 int m_option_parse (int ,int ,int ,int ,union m_option_value*) ;
 int m_option_set_node (int ,union m_option_value*,struct mpv_node*) ;
 TYPE_2__ m_option_type_node ;
 scalar_t__ mp_msg_test (int ,int ) ;
 int mp_null_log ;
 char* stub1 (int *,struct mpv_node*) ;
 int talloc_free (char*) ;

int m_config_set_option_node(struct m_config *config, bstr name,
                             struct mpv_node *data, int flags)
{
    int r;

    struct m_config_option *co = m_config_get_co(config, name);
    if (!co)
        return M_OPT_UNKNOWN;



    union m_option_value val = {0};

    if (data->format == MPV_FORMAT_STRING) {
        bstr param = bstr0(data->u.string);
        r = m_option_parse(mp_null_log, co->opt, name, param, &val);
    } else {
        r = m_option_set_node(co->opt, &val, data);
    }

    if (r >= 0)
        r = m_config_set_option_raw(config, co, &val, flags);

    if (mp_msg_test(config->log, MSGL_V)) {
        char *s = m_option_type_node.print(((void*)0), data);
        MP_DBG(config, "Setting option '%.*s' = %s (flags = %d) -> %d\n",
               BSTR_P(name), s ? s : "?", flags, r);
        talloc_free(s);
    }

    m_option_free(co->opt, &val);
    return r;
}
