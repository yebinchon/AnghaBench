
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {int s_prefix; int s_prefix_val; } ;
struct TYPE_2__ {int in_operand; } ;
struct directive {TYPE_1__ d_inst; } ;


 int get_num (int ,int) ;

__attribute__((used)) static int get_operand(struct state *s, struct directive *d) {
 int total = get_num(d->d_inst.in_operand, 0);
 if (s->s_prefix)
  total += get_num(s->s_prefix_val, 8);
 if (s->s_prefix == 2)
  total += get_num(s->s_prefix_val, 16);
 return total;
}
