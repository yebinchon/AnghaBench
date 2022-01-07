
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int num; int member_0; } ;
struct mp_aframe {int dummy; } ;
struct m_sub_property {char* member_0; int member_1; } ;


 int M_PROPERTY_UNAVAILABLE ;
 int SUB_PROP_INT (int ) ;
 int SUB_PROP_STR (int ) ;
 int af_fmt_to_str (int ) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;
 int mp_aframe_config_is_valid (struct mp_aframe*) ;
 int mp_aframe_get_chmap (struct mp_aframe*,struct mp_chmap*) ;
 int mp_aframe_get_format (struct mp_aframe*) ;
 int mp_aframe_get_rate (struct mp_aframe*) ;
 int mp_chmap_to_str (struct mp_chmap*) ;
 int mp_chmap_to_str_hr (struct mp_chmap*) ;

__attribute__((used)) static int property_audiofmt(struct mp_aframe *fmt, int action, void *arg)
{
    if (!fmt || !mp_aframe_config_is_valid(fmt))
        return M_PROPERTY_UNAVAILABLE;

    struct mp_chmap chmap = {0};
    mp_aframe_get_chmap(fmt, &chmap);

    struct m_sub_property props[] = {
        {"samplerate", SUB_PROP_INT(mp_aframe_get_rate(fmt))},
        {"channel-count", SUB_PROP_INT(chmap.num)},
        {"channels", SUB_PROP_STR(mp_chmap_to_str(&chmap))},
        {"hr-channels", SUB_PROP_STR(mp_chmap_to_str_hr(&chmap))},
        {"format", SUB_PROP_STR(af_fmt_to_str(mp_aframe_get_format(fmt)))},
        {0}
    };

    return m_property_read_sub(props, action, arg);
}
