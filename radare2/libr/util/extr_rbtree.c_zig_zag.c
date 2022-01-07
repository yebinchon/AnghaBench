
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int red; struct TYPE_6__** child; } ;
typedef int (* RBNodeSum ) (TYPE_1__*) ;
typedef TYPE_1__ RBNode ;



__attribute__((used)) static inline RBNode *zig_zag(RBNode *x, int dir, RBNodeSum sum) {
 RBNode *y = x->child[dir], *z = y->child[!dir];
 y->child[!dir] = z->child[dir];
 z->child[dir] = y;
 x->child[dir] = z->child[!dir];
 z->child[!dir] = x;
 x->red = y->red = 1;
 z->red = 0;
 if (sum) {
  sum (x);
  sum (y);
 }
 return z;
}
