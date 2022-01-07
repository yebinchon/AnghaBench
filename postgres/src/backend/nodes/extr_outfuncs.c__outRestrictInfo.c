
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RestrictInfo ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int can_join ;
 int clause ;
 int clause_relids ;
 int hashjoinoperator ;
 int is_pushed_down ;
 int leakproof ;
 int left_em ;
 int left_relids ;
 int mergeopfamilies ;
 int norm_selec ;
 int nullable_relids ;
 int orclause ;
 int outer_is_left ;
 int outer_relids ;
 int outer_selec ;
 int outerjoin_delayed ;
 int pseudoconstant ;
 int required_relids ;
 int right_em ;
 int right_relids ;
 int security_level ;

__attribute__((used)) static void
_outRestrictInfo(StringInfo str, const RestrictInfo *node)
{
 WRITE_NODE_TYPE("RESTRICTINFO");


 WRITE_NODE_FIELD(clause);
 WRITE_BOOL_FIELD(is_pushed_down);
 WRITE_BOOL_FIELD(outerjoin_delayed);
 WRITE_BOOL_FIELD(can_join);
 WRITE_BOOL_FIELD(pseudoconstant);
 WRITE_BOOL_FIELD(leakproof);
 WRITE_UINT_FIELD(security_level);
 WRITE_BITMAPSET_FIELD(clause_relids);
 WRITE_BITMAPSET_FIELD(required_relids);
 WRITE_BITMAPSET_FIELD(outer_relids);
 WRITE_BITMAPSET_FIELD(nullable_relids);
 WRITE_BITMAPSET_FIELD(left_relids);
 WRITE_BITMAPSET_FIELD(right_relids);
 WRITE_NODE_FIELD(orclause);

 WRITE_FLOAT_FIELD(norm_selec, "%.4f");
 WRITE_FLOAT_FIELD(outer_selec, "%.4f");
 WRITE_NODE_FIELD(mergeopfamilies);


 WRITE_NODE_FIELD(left_em);
 WRITE_NODE_FIELD(right_em);
 WRITE_BOOL_FIELD(outer_is_left);
 WRITE_OID_FIELD(hashjoinoperator);
}
