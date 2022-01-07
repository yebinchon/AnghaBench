
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int GroupResultPath ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int quals ;

__attribute__((used)) static void
_outGroupResultPath(StringInfo str, const GroupResultPath *node)
{
 WRITE_NODE_TYPE("GROUPRESULTPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(quals);
}
