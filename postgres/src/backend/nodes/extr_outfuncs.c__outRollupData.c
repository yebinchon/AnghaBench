
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RollupData ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int groupClause ;
 int gsets ;
 int gsets_data ;
 int hashable ;
 int is_hashed ;
 int numGroups ;

__attribute__((used)) static void
_outRollupData(StringInfo str, const RollupData *node)
{
 WRITE_NODE_TYPE("ROLLUP");

 WRITE_NODE_FIELD(groupClause);
 WRITE_NODE_FIELD(gsets);
 WRITE_NODE_FIELD(gsets_data);
 WRITE_FLOAT_FIELD(numGroups, "%.0f");
 WRITE_BOOL_FIELD(hashable);
 WRITE_BOOL_FIELD(is_hashed);
}
