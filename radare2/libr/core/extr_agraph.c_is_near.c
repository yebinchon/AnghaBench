
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ RANode ;



__attribute__((used)) static int is_near(const RANode *n, int x, int y, int is_next) {
 if (is_next) {
  return (n->y == y && n->x > x) || n->y > y;
 }
 return (n->y == y && n->x < x) || n->y < y;
}
