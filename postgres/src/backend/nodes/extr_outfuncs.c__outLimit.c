
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int Limit ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;
 int limitCount ;
 int limitOffset ;

__attribute__((used)) static void
_outLimit(StringInfo str, const Limit *node)
{
 WRITE_NODE_TYPE("LIMIT");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_NODE_FIELD(limitOffset);
 WRITE_NODE_FIELD(limitCount);
}
