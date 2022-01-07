
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_option {int type; } ;
typedef size_t mpv_format ;


 unsigned int MP_ARRAY_SIZE (struct m_option const*) ;
 struct m_option const* type_conv ;

__attribute__((used)) static const struct m_option *get_mp_type(mpv_format format)
{
    if ((unsigned)format >= MP_ARRAY_SIZE(type_conv))
        return ((void*)0);
    if (!type_conv[format].type)
        return ((void*)0);
    return &type_conv[format];
}
