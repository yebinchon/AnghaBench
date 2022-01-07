
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int GatherPath ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int num_workers ;
 int single_copy ;
 int subpath ;

__attribute__((used)) static void
_outGatherPath(StringInfo str, const GatherPath *node)
{
 WRITE_NODE_TYPE("GATHERPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_BOOL_FIELD(single_copy);
 WRITE_INT_FIELD(num_workers);
}
