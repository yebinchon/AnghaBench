
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* string; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;
struct mp_log {int dummy; } ;
typedef int m_option_t ;
typedef int bstr ;


 scalar_t__ MPV_FORMAT_STRING ;
 int bstr0 (char const*) ;
 scalar_t__ bstr_split_tok (int ,char*,int *,int *) ;
 int m_option_parse (struct mp_log*,int const*,int ,int ,void*) ;
 int m_option_set_node (int const*,void*,struct mpv_node*) ;

int m_option_set_node_or_string(struct mp_log *log, const m_option_t *opt,
                                const char *name, void *dst, struct mpv_node *src)
{
    if (src->format == MPV_FORMAT_STRING) {


        bstr optname = bstr0(name), a, b;
        if (bstr_split_tok(optname, "/", &a, &b))
            optname = b;
        return m_option_parse(log, opt, optname, bstr0(src->u.string), dst);
    } else {
        return m_option_set_node(opt, dst, src);
    }
}
