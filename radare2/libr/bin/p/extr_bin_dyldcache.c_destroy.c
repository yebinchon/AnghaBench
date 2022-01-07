
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef int RDyldCache ;
typedef TYPE_2__ RBinFile ;


 int r_dyldcache_free (int *) ;

__attribute__((used)) static void destroy(RBinFile *bf) {
 RDyldCache *cache = (RDyldCache*) bf->o->bin_obj;

 r_dyldcache_free (cache);
}
