
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int in; int bytes_overlap; int buf_overlap; scalar_t__ frames_stride_error; scalar_t__ bytes_to_slide; scalar_t__ bytes_queued; int current_pts; } ;
struct mp_filter {struct priv* priv; } ;


 int MP_NOPTS_VALUE ;
 int TA_FREEP (int *) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void reset(struct mp_filter *f)
{
    struct priv *s = f->priv;

    s->current_pts = MP_NOPTS_VALUE;
    s->bytes_queued = 0;
    s->bytes_to_slide = 0;
    s->frames_stride_error = 0;
    memset(s->buf_overlap, 0, s->bytes_overlap);
    TA_FREEP(&s->in);
}
