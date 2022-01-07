
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Plan ;
typedef int Join ;


 int COPY_NODE_FIELD (int ) ;
 int COPY_SCALAR_FIELD (int ) ;
 int CopyPlanFields (int const*,int *) ;
 int inner_unique ;
 int joinqual ;
 int jointype ;

__attribute__((used)) static void
CopyJoinFields(const Join *from, Join *newnode)
{
 CopyPlanFields((const Plan *) from, (Plan *) newnode);

 COPY_SCALAR_FIELD(jointype);
 COPY_SCALAR_FIELD(inner_unique);
 COPY_NODE_FIELD(joinqual);
}
