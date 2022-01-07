
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
typedef TYPE_1__ bb_t ;



__attribute__((used)) static int bbCMP (void *_a, void *_b) {
 bb_t *a = (bb_t*)_a;
 bb_t *b = (bb_t*)_b;
 return b->start - a->start;
}
