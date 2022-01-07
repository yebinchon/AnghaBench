
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int LimitPath ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int limitCount ;
 int limitOffset ;
 int subpath ;

__attribute__((used)) static void
_outLimitPath(StringInfo str, const LimitPath *node)
{
 WRITE_NODE_TYPE("LIMITPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_NODE_FIELD(limitOffset);
 WRITE_NODE_FIELD(limitCount);
}
