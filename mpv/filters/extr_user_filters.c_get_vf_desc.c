
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_obj_desc {int dummy; } ;


 int MP_ARRAY_SIZE (int ) ;
 int get_desc_from (int ,int ,struct m_obj_desc*,int) ;
 int vf_list ;

__attribute__((used)) static bool get_vf_desc(struct m_obj_desc *dst, int index)
{
    return get_desc_from(vf_list, MP_ARRAY_SIZE(vf_list), dst, index);
}
