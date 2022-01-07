
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int s_off; int s_buf; } ;
struct directive {scalar_t__ d_off; int d_inst; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static int read_bin(struct state *s, struct directive *d) {
 memcpy(&d->d_inst, s->s_buf, sizeof(d->d_inst));
 d->d_off = s->s_off++;
 return 1;
}
