
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_13__ {int len; TYPE_2__** path; } ;
struct TYPE_10__ {scalar_t__ min; int max; } ;
struct TYPE_12__ {scalar_t__ rb_max_addr; scalar_t__ _size; TYPE_1__ meta; } ;
struct TYPE_11__ {struct TYPE_11__** child; } ;
typedef TYPE_2__ RBNode ;
typedef TYPE_3__ RAnalFunction ;
typedef TYPE_4__ FcnTreeIter ;


 TYPE_3__* FCN_CONTAINER (TYPE_2__*) ;

__attribute__((used)) static RBNode *_fcn_tree_probe(FcnTreeIter *it, RBNode *x_, ut64 from, ut64 to) {
 RAnalFunction *x = FCN_CONTAINER (x_), *y;
 RBNode *y_;
 for (;;) {
  if ((y_ = x_->child[0]) && (y = FCN_CONTAINER (y_), from <= y->rb_max_addr)) {
   it->path[it->len++] = x_;
   x_ = y_;
   x = y;
   continue;
  }
  if (x->meta.min <= to - 1) {
   if (from <= x->meta.min + (x->_size == 0 ? 0 : (x->meta.max - x->meta.min - 1))) {
    return x_;
   }
   if ((y_ = x_->child[1])) {
    x_ = y_;
    x = FCN_CONTAINER (y_);
    if (from <= x->rb_max_addr) {
     continue;
    }
   }
  }
  return ((void*)0);
 }
}
