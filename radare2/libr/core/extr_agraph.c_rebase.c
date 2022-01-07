
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int x; } ;
typedef TYPE_1__ RAGraph ;



__attribute__((used)) static ut64 rebase(RAGraph *g, int v) {
 return g->x < 0? -g->x + v: v;
}
