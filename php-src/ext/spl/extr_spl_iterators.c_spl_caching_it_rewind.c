
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zcache; } ;
struct TYPE_8__ {TYPE_1__ caching; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef TYPE_3__ spl_dual_it_object ;


 int Z_ARRVAL (int ) ;
 int spl_caching_it_next (TYPE_3__*) ;
 int spl_dual_it_rewind (TYPE_3__*) ;
 int zend_hash_clean (int ) ;

__attribute__((used)) static inline void spl_caching_it_rewind(spl_dual_it_object *intern)
{
 spl_dual_it_rewind(intern);
 zend_hash_clean(Z_ARRVAL(intern->u.caching.zcache));
 spl_caching_it_next(intern);
}
