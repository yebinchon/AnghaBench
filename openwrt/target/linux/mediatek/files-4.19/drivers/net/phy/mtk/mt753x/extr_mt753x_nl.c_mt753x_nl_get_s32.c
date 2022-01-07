
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef int s32 ;
typedef enum mt753x_attr { ____Placeholder_mt753x_attr } mt753x_attr ;


 int nla_get_s32 (struct nlattr*) ;

__attribute__((used)) static s32 mt753x_nl_get_s32(struct genl_info *info, enum mt753x_attr attr,
        s32 defval)
{
 struct nlattr *na;

 na = info->attrs[attr];
 if (na)
  return nla_get_s32(na);

 return defval;
}
