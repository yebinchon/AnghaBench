
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_ff_side_data; TYPE_2__* ff_side_data; int a53_cc; int icc_profile; int hwctx; int * bufs; } ;
typedef TYPE_1__ mp_image_t ;
struct TYPE_4__ {int buf; } ;


 int MP_MAX_PLANES ;
 int av_buffer_unref (int *) ;
 int talloc_free (TYPE_2__*) ;

__attribute__((used)) static void mp_image_destructor(void *ptr)
{
    mp_image_t *mpi = ptr;
    for (int p = 0; p < MP_MAX_PLANES; p++)
        av_buffer_unref(&mpi->bufs[p]);
    av_buffer_unref(&mpi->hwctx);
    av_buffer_unref(&mpi->icc_profile);
    av_buffer_unref(&mpi->a53_cc);
    for (int n = 0; n < mpi->num_ff_side_data; n++)
        av_buffer_unref(&mpi->ff_side_data[n].buf);
    talloc_free(mpi->ff_side_data);
}
