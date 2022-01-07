
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int frame; int sws; } ;
struct mp_image {int dummy; } ;
typedef struct mp_image mp_image_t ;


 int mp_sws_scale (int ,int ,struct mp_image*) ;
 int talloc_free (struct mp_image*) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    struct priv *p = vo->priv;
    struct mp_image src = *mpi;

    mp_sws_scale(p->sws, p->frame, &src);
    talloc_free(mpi);
}
