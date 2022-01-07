
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Constraint ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int access_method ;
 int conname ;
 int contype ;
 int cooked_expr ;
 int deferrable ;
 int exclusions ;
 int fk_attrs ;
 int fk_del_action ;
 int fk_matchtype ;
 int fk_upd_action ;
 int generated_when ;
 int including ;
 int indexname ;
 int indexspace ;
 int initdeferred ;
 int initially_valid ;
 int is_no_inherit ;
 int keys ;
 int location ;
 int old_conpfeqop ;
 int old_pktable_oid ;
 int options ;
 int pk_attrs ;
 int pktable ;
 int raw_expr ;
 int reset_default_tblspc ;
 int skip_validation ;
 int where_clause ;

__attribute__((used)) static bool
_equalConstraint(const Constraint *a, const Constraint *b)
{
 COMPARE_SCALAR_FIELD(contype);
 COMPARE_STRING_FIELD(conname);
 COMPARE_SCALAR_FIELD(deferrable);
 COMPARE_SCALAR_FIELD(initdeferred);
 COMPARE_LOCATION_FIELD(location);
 COMPARE_SCALAR_FIELD(is_no_inherit);
 COMPARE_NODE_FIELD(raw_expr);
 COMPARE_STRING_FIELD(cooked_expr);
 COMPARE_SCALAR_FIELD(generated_when);
 COMPARE_NODE_FIELD(keys);
 COMPARE_NODE_FIELD(including);
 COMPARE_NODE_FIELD(exclusions);
 COMPARE_NODE_FIELD(options);
 COMPARE_STRING_FIELD(indexname);
 COMPARE_STRING_FIELD(indexspace);
 COMPARE_SCALAR_FIELD(reset_default_tblspc);
 COMPARE_STRING_FIELD(access_method);
 COMPARE_NODE_FIELD(where_clause);
 COMPARE_NODE_FIELD(pktable);
 COMPARE_NODE_FIELD(fk_attrs);
 COMPARE_NODE_FIELD(pk_attrs);
 COMPARE_SCALAR_FIELD(fk_matchtype);
 COMPARE_SCALAR_FIELD(fk_upd_action);
 COMPARE_SCALAR_FIELD(fk_del_action);
 COMPARE_NODE_FIELD(old_conpfeqop);
 COMPARE_SCALAR_FIELD(old_pktable_oid);
 COMPARE_SCALAR_FIELD(skip_validation);
 COMPARE_SCALAR_FIELD(initially_valid);

 return 1;
}
