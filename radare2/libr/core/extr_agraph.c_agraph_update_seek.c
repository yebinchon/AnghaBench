
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int force_update_seek; int * update_seek_on; } ;
typedef int RANode ;
typedef TYPE_1__ RAGraph ;



__attribute__((used)) static void agraph_update_seek(RAGraph *g, RANode *n, int force) {
 g->update_seek_on = n;
 g->force_update_seek = force;
}
