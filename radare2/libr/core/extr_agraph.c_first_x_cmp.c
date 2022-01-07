
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ RGraphNode ;
typedef TYPE_2__ RANode ;



__attribute__((used)) static int first_x_cmp (const void *_a, const void *_b) {
 RGraphNode *ga = (RGraphNode *)_a;
 RGraphNode *gb = (RGraphNode *)_b;
 RANode *a = (RANode*) ga->data;
 RANode *b = (RANode*) gb->data;
 if (b->y < a->y) {
  return -1;
 }
 if (b->y > a->y) {
  return 1;
 }
 if (a->x < b->x) {
  return 1;
 }
 if (a->x > b->x) {
  return -1;
 }
 return 0;
}
