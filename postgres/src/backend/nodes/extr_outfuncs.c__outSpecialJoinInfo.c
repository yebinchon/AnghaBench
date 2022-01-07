
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SpecialJoinInfo ;


 int JoinType ;
 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
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

__attribute__((used)) static void
_outSpecialJoinInfo(StringInfo str, const SpecialJoinInfo *node)
{
 WRITE_NODE_TYPE("SPECIALJOININFO");

 WRITE_BITMAPSET_FIELD(min_lefthand);
 WRITE_BITMAPSET_FIELD(min_righthand);
 WRITE_BITMAPSET_FIELD(syn_lefthand);
 WRITE_BITMAPSET_FIELD(syn_righthand);
 WRITE_ENUM_FIELD(jointype, JoinType);
 WRITE_BOOL_FIELD(lhs_strict);
 WRITE_BOOL_FIELD(delay_upper_joins);
 WRITE_BOOL_FIELD(semi_can_btree);
 WRITE_BOOL_FIELD(semi_can_hash);
 WRITE_NODE_FIELD(semi_operators);
 WRITE_NODE_FIELD(semi_rhs_exprs);
}
