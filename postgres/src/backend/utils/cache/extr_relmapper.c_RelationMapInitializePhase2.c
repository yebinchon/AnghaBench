
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsBootstrapProcessingMode () ;
 int load_relmap_file (int) ;

void
RelationMapInitializePhase2(void)
{



 if (IsBootstrapProcessingMode())
  return;




 load_relmap_file(1);
}
