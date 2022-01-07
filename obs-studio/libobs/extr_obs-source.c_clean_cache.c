
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct async_frame {scalar_t__ unused_count; int frame; int used; } ;
struct TYPE_5__ {size_t num; struct async_frame* array; } ;
struct TYPE_4__ {TYPE_2__ async_cache; } ;
typedef TYPE_1__ obs_source_t ;


 scalar_t__ MAX_UNUSED_FRAME_DURATION ;
 int da_erase (TYPE_2__,size_t) ;
 int obs_source_frame_destroy (int ) ;

__attribute__((used)) static void clean_cache(obs_source_t *source)
{
 for (size_t i = source->async_cache.num; i > 0; i--) {
  struct async_frame *af = &source->async_cache.array[i - 1];
  if (!af->used) {
   if (++af->unused_count == MAX_UNUSED_FRAME_DURATION) {
    obs_source_frame_destroy(af->frame);
    da_erase(source->async_cache, i - 1);
   }
  }
 }
}
