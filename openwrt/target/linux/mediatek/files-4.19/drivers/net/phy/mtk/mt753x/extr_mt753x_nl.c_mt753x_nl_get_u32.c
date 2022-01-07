
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef enum mt753x_attr { ____Placeholder_mt753x_attr } mt753x_attr ;


 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int mt753x_nl_get_u32(struct genl_info *info, enum mt753x_attr attr,
        u32 *val)
{
 struct nlattr *na;

 na = info->attrs[attr];
 if (na) {
  *val = nla_get_u32(na);
  return 0;
 }

 return -1;
}
