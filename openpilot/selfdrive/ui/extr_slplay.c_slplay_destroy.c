
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__** player; int * uri; } ;
typedef TYPE_1__ uri_player ;
struct TYPE_11__ {int (* Destroy ) (TYPE_4__**) ;} ;
struct TYPE_10__ {int (* Destroy ) (TYPE_3__**) ;} ;
struct TYPE_9__ {int (* Destroy ) (TYPE_2__**) ;} ;


 TYPE_2__** engine ;
 TYPE_3__** outputMix ;
 TYPE_1__* players ;
 int stub1 (TYPE_4__**) ;
 int stub2 (TYPE_3__**) ;
 int stub3 (TYPE_2__**) ;

void slplay_destroy() {
  for (uri_player *player = players; player->uri != ((void*)0); player++) {
    if (player->player) {
      (*(player->player))->Destroy(player->player);
    }
  }

  (*outputMix)->Destroy(outputMix);
  (*engine)->Destroy(engine);
}
