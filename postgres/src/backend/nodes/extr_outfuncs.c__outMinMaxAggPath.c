
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int MinMaxAggPath ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int mmaggregates ;
 int quals ;

__attribute__((used)) static void
_outMinMaxAggPath(StringInfo str, const MinMaxAggPath *node)
{
 WRITE_NODE_TYPE("MINMAXAGGPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(mmaggregates);
 WRITE_NODE_FIELD(quals);
}
