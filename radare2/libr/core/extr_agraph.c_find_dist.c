
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dist_t {scalar_t__ from; scalar_t__ to; } ;



__attribute__((used)) static int find_dist(const struct dist_t *a, const struct dist_t *b) {
 return a->from == b->from && a->to == b->to? 0: 1;
}
