
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_module_path {int data; int bin; } ;


 int bfree (int ) ;

__attribute__((used)) static inline void free_module_path(struct obs_module_path *omp)
{
 if (omp) {
  bfree(omp->bin);
  bfree(omp->data);
 }
}
