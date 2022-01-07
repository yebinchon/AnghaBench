
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RestrictInfo ;


 int COMPARE_BITMAPSET_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int clause ;
 int is_pushed_down ;
 int nullable_relids ;
 int outer_relids ;
 int outerjoin_delayed ;
 int required_relids ;
 int security_level ;

__attribute__((used)) static bool
_equalRestrictInfo(const RestrictInfo *a, const RestrictInfo *b)
{
 COMPARE_NODE_FIELD(clause);
 COMPARE_SCALAR_FIELD(is_pushed_down);
 COMPARE_SCALAR_FIELD(outerjoin_delayed);
 COMPARE_SCALAR_FIELD(security_level);
 COMPARE_BITMAPSET_FIELD(required_relids);
 COMPARE_BITMAPSET_FIELD(outer_relids);
 COMPARE_BITMAPSET_FIELD(nullable_relids);






 return 1;
}
