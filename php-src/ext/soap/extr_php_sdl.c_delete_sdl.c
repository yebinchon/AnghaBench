
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sdlPtr ;
struct TYPE_3__ {int is_persistent; } ;


 int delete_sdl_impl (TYPE_1__*) ;

void delete_sdl(void *handle)
{
 sdlPtr tmp = (sdlPtr)handle;

 if (!tmp->is_persistent) {
  delete_sdl_impl(tmp);
 }
}
