
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_option {int dummy; } ;
typedef scalar_t__ mpv_format ;


 scalar_t__ MPV_FORMAT_OSD_STRING ;
 scalar_t__ MPV_FORMAT_STRING ;
 struct m_option const* get_mp_type (scalar_t__) ;

__attribute__((used)) static const struct m_option *get_mp_type_get(mpv_format format)
{
    if (format == MPV_FORMAT_OSD_STRING)
        format = MPV_FORMAT_STRING;
    return get_mp_type(format);
}
