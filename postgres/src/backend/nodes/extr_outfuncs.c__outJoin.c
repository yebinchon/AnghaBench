
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Join ;


 int WRITE_NODE_TYPE (char*) ;
 int _outJoinPlanInfo (int ,int const*) ;

__attribute__((used)) static void
_outJoin(StringInfo str, const Join *node)
{
 WRITE_NODE_TYPE("JOIN");

 _outJoinPlanInfo(str, (const Join *) node);
}
