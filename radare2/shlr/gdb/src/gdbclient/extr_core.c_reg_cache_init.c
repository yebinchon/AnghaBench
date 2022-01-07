
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_max; } ;
typedef TYPE_1__ libgdbr_t ;
struct TYPE_5__ {int valid; int init; int maxlen; int buf; scalar_t__ buflen; } ;


 int malloc (int ) ;
 TYPE_3__ reg_cache ;

__attribute__((used)) static void reg_cache_init(libgdbr_t *g) {
 reg_cache.maxlen = g->data_max;
 reg_cache.buflen = 0;
 reg_cache.valid = 0;
 reg_cache.init = 0;
 if ((reg_cache.buf = malloc (reg_cache.maxlen))) {
  reg_cache.init = 1;
 }
}
