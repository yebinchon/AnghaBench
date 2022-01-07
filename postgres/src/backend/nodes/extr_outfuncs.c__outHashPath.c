
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int JoinPath ;
typedef int HashPath ;


 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outJoinPathInfo (int ,int const*) ;
 int inner_rows_total ;
 int num_batches ;
 int path_hashclauses ;

__attribute__((used)) static void
_outHashPath(StringInfo str, const HashPath *node)
{
 WRITE_NODE_TYPE("HASHPATH");

 _outJoinPathInfo(str, (const JoinPath *) node);

 WRITE_NODE_FIELD(path_hashclauses);
 WRITE_INT_FIELD(num_batches);
 WRITE_FLOAT_FIELD(inner_rows_total, "%.0f");
}
