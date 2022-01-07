
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {int dummy; } ;


 int av_version_info () ;
 int m_property_strdup_ro (int,void*,int ) ;

__attribute__((used)) static int mp_property_ffmpeg(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    return m_property_strdup_ro(action, arg, av_version_info());
}
