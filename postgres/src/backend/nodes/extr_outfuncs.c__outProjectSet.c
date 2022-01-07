
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ProjectSet ;
typedef int Plan ;


 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;

__attribute__((used)) static void
_outProjectSet(StringInfo str, const ProjectSet *node)
{
 WRITE_NODE_TYPE("PROJECTSET");

 _outPlanInfo(str, (const Plan *) node);
}
