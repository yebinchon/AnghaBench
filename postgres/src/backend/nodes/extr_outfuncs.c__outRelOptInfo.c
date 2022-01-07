
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RelOptInfo ;


 int RTEKind ;
 int RelOptKind ;
 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int allvisfrac ;
 int baserestrict_min_security ;
 int baserestrictinfo ;
 int cheapest_parameterized_paths ;
 int cheapest_startup_path ;
 int cheapest_total_path ;
 int cheapest_unique_path ;
 int consider_parallel ;
 int consider_param_startup ;
 int consider_partitionwise_join ;
 int consider_startup ;
 int direct_lateral_relids ;
 int eclass_indexes ;
 int has_eclass_joins ;
 int indexlist ;
 int joininfo ;
 int lateral_referencers ;
 int lateral_relids ;
 int lateral_vars ;
 int max_attr ;
 int min_attr ;
 int pages ;
 int partial_pathlist ;
 int partitioned_child_rels ;
 int pathlist ;
 int ppilist ;
 int rel_parallel_workers ;
 int relid ;
 int relids ;
 int reloptkind ;
 int reltablespace ;
 int reltarget ;
 int rows ;
 int rtekind ;
 int serverid ;
 int statlist ;
 int subplan_params ;
 int subroot ;
 int top_parent_relids ;
 int tuples ;
 int userid ;
 int useridiscurrent ;

__attribute__((used)) static void
_outRelOptInfo(StringInfo str, const RelOptInfo *node)
{
 WRITE_NODE_TYPE("RELOPTINFO");


 WRITE_ENUM_FIELD(reloptkind, RelOptKind);
 WRITE_BITMAPSET_FIELD(relids);
 WRITE_FLOAT_FIELD(rows, "%.0f");
 WRITE_BOOL_FIELD(consider_startup);
 WRITE_BOOL_FIELD(consider_param_startup);
 WRITE_BOOL_FIELD(consider_parallel);
 WRITE_NODE_FIELD(reltarget);
 WRITE_NODE_FIELD(pathlist);
 WRITE_NODE_FIELD(ppilist);
 WRITE_NODE_FIELD(partial_pathlist);
 WRITE_NODE_FIELD(cheapest_startup_path);
 WRITE_NODE_FIELD(cheapest_total_path);
 WRITE_NODE_FIELD(cheapest_unique_path);
 WRITE_NODE_FIELD(cheapest_parameterized_paths);
 WRITE_BITMAPSET_FIELD(direct_lateral_relids);
 WRITE_BITMAPSET_FIELD(lateral_relids);
 WRITE_UINT_FIELD(relid);
 WRITE_OID_FIELD(reltablespace);
 WRITE_ENUM_FIELD(rtekind, RTEKind);
 WRITE_INT_FIELD(min_attr);
 WRITE_INT_FIELD(max_attr);
 WRITE_NODE_FIELD(lateral_vars);
 WRITE_BITMAPSET_FIELD(lateral_referencers);
 WRITE_NODE_FIELD(indexlist);
 WRITE_NODE_FIELD(statlist);
 WRITE_UINT_FIELD(pages);
 WRITE_FLOAT_FIELD(tuples, "%.0f");
 WRITE_FLOAT_FIELD(allvisfrac, "%.6f");
 WRITE_BITMAPSET_FIELD(eclass_indexes);
 WRITE_NODE_FIELD(subroot);
 WRITE_NODE_FIELD(subplan_params);
 WRITE_INT_FIELD(rel_parallel_workers);
 WRITE_OID_FIELD(serverid);
 WRITE_OID_FIELD(userid);
 WRITE_BOOL_FIELD(useridiscurrent);


 WRITE_NODE_FIELD(baserestrictinfo);
 WRITE_UINT_FIELD(baserestrict_min_security);
 WRITE_NODE_FIELD(joininfo);
 WRITE_BOOL_FIELD(has_eclass_joins);
 WRITE_BOOL_FIELD(consider_partitionwise_join);
 WRITE_BITMAPSET_FIELD(top_parent_relids);
 WRITE_NODE_FIELD(partitioned_child_rels);
}
