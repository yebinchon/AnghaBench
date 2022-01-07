
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int GroupPath ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int groupClause ;
 int qual ;
 int subpath ;

__attribute__((used)) static void
_outGroupPath(StringInfo str, const GroupPath *node)
{
 WRITE_NODE_TYPE("GROUPPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_NODE_FIELD(groupClause);
 WRITE_NODE_FIELD(qual);
}
