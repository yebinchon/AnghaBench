
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Scan ;
typedef int Plan ;


 int COPY_SCALAR_FIELD (int ) ;
 int CopyPlanFields (int const*,int *) ;
 int scanrelid ;

__attribute__((used)) static void
CopyScanFields(const Scan *from, Scan *newnode)
{
 CopyPlanFields((const Plan *) from, (Plan *) newnode);

 COPY_SCALAR_FIELD(scanrelid);
}
