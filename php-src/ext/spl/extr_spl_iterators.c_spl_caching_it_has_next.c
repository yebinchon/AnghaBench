
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_dual_it_object ;


 int spl_dual_it_valid (int *) ;

__attribute__((used)) static inline int spl_caching_it_has_next(spl_dual_it_object *intern)
{
 return spl_dual_it_valid(intern);
}
