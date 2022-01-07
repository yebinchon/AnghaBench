
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_image {int num_ff_side_data; TYPE_1__* ff_side_data; int a53_cc; int icc_profile; int hwctx; int * bufs; } ;
struct TYPE_3__ {int buf; } ;


 int MP_MAX_PLANES ;
 int mp_image_destructor ;
 struct mp_image* mp_image_new_copy (struct mp_image*) ;
 struct mp_image* new ;
 int ref_buffer (int*,int *) ;
 int talloc_free (struct mp_image*) ;
 TYPE_1__* talloc_memdup (int *,TYPE_1__*,int) ;
 struct mp_image* talloc_ptrtype (int *,int ) ;
 int talloc_set_destructor (struct mp_image*,int ) ;

struct mp_image *mp_image_new_ref(struct mp_image *img)
{
    if (!img)
        return ((void*)0);

    if (!img->bufs[0])
        return mp_image_new_copy(img);

    struct mp_image *new = talloc_ptrtype(((void*)0), new);
    talloc_set_destructor(new, mp_image_destructor);
    *new = *img;

    bool ok = 1;
    for (int p = 0; p < MP_MAX_PLANES; p++)
        ref_buffer(&ok, &new->bufs[p]);

    ref_buffer(&ok, &new->hwctx);
    ref_buffer(&ok, &new->icc_profile);
    ref_buffer(&ok, &new->a53_cc);

    new->ff_side_data = talloc_memdup(((void*)0), new->ff_side_data,
                        new->num_ff_side_data * sizeof(new->ff_side_data[0]));
    for (int n = 0; n < new->num_ff_side_data; n++)
        ref_buffer(&ok, &new->ff_side_data[n].buf);

    if (ok)
        return new;



    talloc_free(new);
    return ((void*)0);
}
