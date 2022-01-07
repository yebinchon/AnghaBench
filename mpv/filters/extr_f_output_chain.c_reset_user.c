
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_user_filter {int error_eof_sent; int last_out_pts; int last_in_pts; } ;
struct mp_filter {struct mp_user_filter* priv; } ;


 int MP_NOPTS_VALUE ;

__attribute__((used)) static void reset_user(struct mp_filter *f)
{
    struct mp_user_filter *u = f->priv;

    u->error_eof_sent = 0;
    u->last_in_pts = u->last_out_pts = MP_NOPTS_VALUE;
}
