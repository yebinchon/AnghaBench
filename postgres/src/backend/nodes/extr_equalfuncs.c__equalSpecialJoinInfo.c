
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SpecialJoinInfo ;


 int COMPARE_BITMAPSET_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int delay_upper_joins ;
 int jointype ;
 int lhs_strict ;
 int min_lefthand ;
 int min_righthand ;
 int semi_can_btree ;
 int semi_can_hash ;
 int semi_operators ;
 int semi_rhs_exprs ;
 int syn_lefthand ;
 int syn_righthand ;

__attribute__((used)) static bool
_equalSpecialJoinInfo(const SpecialJoinInfo *a, const SpecialJoinInfo *b)
{
 COMPARE_BITMAPSET_FIELD(min_lefthand);
 COMPARE_BITMAPSET_FIELD(min_righthand);
 COMPARE_BITMAPSET_FIELD(syn_lefthand);
 COMPARE_BITMAPSET_FIELD(syn_righthand);
 COMPARE_SCALAR_FIELD(jointype);
 COMPARE_SCALAR_FIELD(lhs_strict);
 COMPARE_SCALAR_FIELD(delay_upper_joins);
 COMPARE_SCALAR_FIELD(semi_can_btree);
 COMPARE_SCALAR_FIELD(semi_can_hash);
 COMPARE_NODE_FIELD(semi_operators);
 COMPARE_NODE_FIELD(semi_rhs_exprs);

 return 1;
}
