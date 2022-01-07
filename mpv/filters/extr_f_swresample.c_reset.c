
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int avrctx; int input; int current_pts; } ;
struct mp_filter {struct priv* priv; } ;


 int MP_NOPTS_VALUE ;
 int TA_FREEP (int *) ;
 scalar_t__ avresample_read (int ,int *,int) ;
 int close_lavrr (struct priv*) ;
 int swr_close (int ) ;
 scalar_t__ swr_init (int ) ;

__attribute__((used)) static void reset(struct mp_filter *f)
{
    struct priv *p = f->priv;

    p->current_pts = MP_NOPTS_VALUE;
    TA_FREEP(&p->input);

    if (!p->avrctx)
        return;





    while (avresample_read(p->avrctx, ((void*)0), 1000) > 0) {}

}
