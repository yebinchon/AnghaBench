
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct float_pair {int s; scalar_t__ x; } ;



__attribute__((used)) static void
div_pair(struct float_pair *q, struct float_pair const *a,
         struct float_pair const *b)
{
  q->s = a->s / b->s;
  q->x = a->x - b->x;
}
