
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GUCNestLevel ;
 int WARNING ;
 int elog (int ,char*,int) ;

void
AtStart_GUC(void)
{





 if (GUCNestLevel != 0)
  elog(WARNING, "GUC nest level = %d at transaction start",
    GUCNestLevel);
 GUCNestLevel = 1;
}
