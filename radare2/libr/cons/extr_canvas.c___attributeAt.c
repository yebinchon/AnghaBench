
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrs; int color; } ;
typedef TYPE_1__ RConsCanvas ;


 char const* ht_up_find (int ,int,int *) ;

__attribute__((used)) static const char *__attributeAt(RConsCanvas *c, int loc) {
 if (!c->color) {
  return ((void*)0);
 }
 return ht_up_find (c->attrs, loc, ((void*)0));
}
