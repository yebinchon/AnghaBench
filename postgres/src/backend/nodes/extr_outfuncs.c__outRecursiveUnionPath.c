
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RecursiveUnionPath ;
typedef int Path ;


 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int distinctList ;
 int leftpath ;
 int numGroups ;
 int rightpath ;
 int wtParam ;

__attribute__((used)) static void
_outRecursiveUnionPath(StringInfo str, const RecursiveUnionPath *node)
{
 WRITE_NODE_TYPE("RECURSIVEUNIONPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(leftpath);
 WRITE_NODE_FIELD(rightpath);
 WRITE_NODE_FIELD(distinctList);
 WRITE_INT_FIELD(wtParam);
 WRITE_FLOAT_FIELD(numGroups, "%.0f");
}
