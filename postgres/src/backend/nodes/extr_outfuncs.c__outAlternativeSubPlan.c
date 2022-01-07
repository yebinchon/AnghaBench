
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int AlternativeSubPlan ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int subplans ;

__attribute__((used)) static void
_outAlternativeSubPlan(StringInfo str, const AlternativeSubPlan *node)
{
 WRITE_NODE_TYPE("ALTERNATIVESUBPLAN");

 WRITE_NODE_FIELD(subplans);
}
