
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pos {int dummy; } ;
struct line {int dummy; } ;
struct hunklist {TYPE_1__* head; } ;
struct TYPE_2__ {int a1; int a2; int b1; int b2; } ;


 int longest_match (struct line*,struct line*,struct pos*,int,int,int,int,int*,int*) ;

__attribute__((used)) static void recurse(struct line *a, struct line *b, struct pos *pos,
      int a1, int a2, int b1, int b2, struct hunklist *l)
{
 int i, j, k;


 k = longest_match(a, b, pos, a1, a2, b1, b2, &i, &j);
 if (!k) {
  return;
 }


 recurse(a, b, pos, a1, i, b1, j, l);
 l->head->a1 = i;
 l->head->a2 = i + k;
 l->head->b1 = j;
 l->head->b2 = j + k;
 l->head++;
 recurse(a, b, pos, i + k, a2, j + k, b2, l);
}
