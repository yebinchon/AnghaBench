
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int Join ;


 int JoinType ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int _outPlanInfo (int ,int const*) ;
 int inner_unique ;
 int joinqual ;
 int jointype ;

__attribute__((used)) static void
_outJoinPlanInfo(StringInfo str, const Join *node)
{
 _outPlanInfo(str, (const Plan *) node);

 WRITE_ENUM_FIELD(jointype, JoinType);
 WRITE_BOOL_FIELD(inner_unique);
 WRITE_NODE_FIELD(joinqual);
}
