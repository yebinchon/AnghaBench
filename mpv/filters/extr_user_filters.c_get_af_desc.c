
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_obj_desc {int dummy; } ;


 int MP_ARRAY_SIZE (int ) ;
 int af_list ;
 int get_desc_from (int ,int ,struct m_obj_desc*,int) ;

__attribute__((used)) static bool get_af_desc(struct m_obj_desc *dst, int index)
{
    return get_desc_from(af_list, MP_ARRAY_SIZE(af_list), dst, index);
}
