
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int MergeAppendPath ;


 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int limit_tuples ;
 int partitioned_rels ;
 int subpaths ;

__attribute__((used)) static void
_outMergeAppendPath(StringInfo str, const MergeAppendPath *node)
{
 WRITE_NODE_TYPE("MERGEAPPENDPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(partitioned_rels);
 WRITE_NODE_FIELD(subpaths);
 WRITE_FLOAT_FIELD(limit_tuples, "%.0f");
}
