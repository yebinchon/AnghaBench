
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int spl_dual_it_object ;


 int spl_dual_it_next (int *,int) ;
 int spl_filter_it_fetch (int *,int *) ;

__attribute__((used)) static inline void spl_filter_it_next(zval *zthis, spl_dual_it_object *intern)
{
 spl_dual_it_next(intern, 1);
 spl_filter_it_fetch(zthis, intern);
}
