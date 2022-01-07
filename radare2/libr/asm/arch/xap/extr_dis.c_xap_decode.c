
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int s_prefix; int s_prefix_val; } ;
struct directive {int dummy; } ;


 int decode_fixed (struct state*,struct directive*) ;
 int decode_known (struct state*,struct directive*) ;
 int decode_unknown (struct state*,struct directive*) ;

__attribute__((used)) static void xap_decode(struct state *s, struct directive *d) {
 int prefix = s->s_prefix;
 if (!decode_fixed (s, d))
  if (!decode_known (s, d))
   decode_unknown (s, d);
 if (s->s_prefix == prefix)
  s->s_prefix_val = s->s_prefix = 0;
}
