
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct gsw_mt753x {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;


 size_t MT753X_ATTR_TYPE_DEV_ID ;
 struct gsw_mt753x* mt753x_get_first_gsw () ;
 struct gsw_mt753x* mt753x_get_gsw (int) ;
 int nla_get_s32 (struct nlattr*) ;

__attribute__((used)) static struct gsw_mt753x *mt753x_nl_parse_find_gsw(struct genl_info *info)
{
 struct gsw_mt753x *gsw;
 struct nlattr *na;
 int gsw_id;

 na = info->attrs[MT753X_ATTR_TYPE_DEV_ID];
 if (na) {
  gsw_id = nla_get_s32(na);
  if (gsw_id >= 0)
   gsw = mt753x_get_gsw(gsw_id);
  else
   gsw = mt753x_get_first_gsw();
 } else {
  gsw = mt753x_get_first_gsw();
 }

 return gsw;
}
