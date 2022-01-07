
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_dual_it_object ;


 scalar_t__ SUCCESS ;
 int spl_append_it_fetch (int *) ;
 int spl_dual_it_next (int *,int) ;
 scalar_t__ spl_dual_it_valid (int *) ;

void spl_append_it_next(spl_dual_it_object *intern)
{
 if (spl_dual_it_valid(intern) == SUCCESS) {
  spl_dual_it_next(intern, 1);
 }
 spl_append_it_fetch(intern);
}
