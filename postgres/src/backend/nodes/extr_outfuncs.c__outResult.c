
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Result ;
typedef int Plan ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;
 int resconstantqual ;

__attribute__((used)) static void
_outResult(StringInfo str, const Result *node)
{
 WRITE_NODE_TYPE("RESULT");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_NODE_FIELD(resconstantqual);
}
