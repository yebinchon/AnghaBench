
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int NestLoop ;
typedef int Join ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outJoinPlanInfo (int ,int const*) ;
 int nestParams ;

__attribute__((used)) static void
_outNestLoop(StringInfo str, const NestLoop *node)
{
 WRITE_NODE_TYPE("NESTLOOP");

 _outJoinPlanInfo(str, (const Join *) node);

 WRITE_NODE_FIELD(nestParams);
}
