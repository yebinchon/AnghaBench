
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int in; int table_window; int table_blend; int buf_pre_corr; int buf_overlap; int buf_queue; } ;
struct mp_filter {struct priv* priv; } ;


 int TA_FREEP (int *) ;
 int free (int ) ;
 int mp_filter_free_children (struct mp_filter*) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *s = f->priv;
    free(s->buf_queue);
    free(s->buf_overlap);
    free(s->buf_pre_corr);
    free(s->table_blend);
    free(s->table_window);
    TA_FREEP(&s->in);
    mp_filter_free_children(f);
}
