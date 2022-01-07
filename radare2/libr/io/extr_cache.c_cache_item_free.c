
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* odata; struct TYPE_4__* data; } ;
typedef TYPE_1__ RIOCache ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void cache_item_free(RIOCache *cache) {
 if (!cache) {
  return;
 }
 free (cache->data);
 free (cache->odata);
 free (cache);
}
