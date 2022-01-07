
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_sub_property {char* member_0; int member_1; } ;
struct m_property {int dummy; } ;


 int OSD_ASS_0 ;
 int OSD_ASS_1 ;
 int SUB_PROP_STR (int ) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;

__attribute__((used)) static int mp_property_osd_ass(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    struct m_sub_property props[] = {
        {"0", SUB_PROP_STR(OSD_ASS_0)},
        {"1", SUB_PROP_STR(OSD_ASS_1)},
        {0}
    };
    return m_property_read_sub(props, action, arg);
}
