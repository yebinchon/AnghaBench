
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int decoded_coverart; TYPE_1__* decoder; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_2__ {int f; } ;


 int MP_DBG (struct mp_filter*,char*) ;
 int mp_frame_unref (int *) ;
 int reset (struct mp_filter*) ;
 int talloc_free (int ) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *p = f->priv;
    if (p->decoder) {
        MP_DBG(f, "Uninit decoder.\n");
        talloc_free(p->decoder->f);
        p->decoder = ((void*)0);
    }
    reset(f);
    mp_frame_unref(&p->decoded_coverart);
}
