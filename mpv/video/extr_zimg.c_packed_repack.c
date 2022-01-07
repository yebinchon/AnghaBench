
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mp_zimg_repack {int* components; unsigned int* zmask; int (* packed_repack_scanline ) (int *,void**,unsigned int,unsigned int) ;TYPE_2__* tmp; TYPE_1__* mpi; } ;
typedef int ptrdiff_t ;
struct TYPE_4__ {int* stride; void** planes; } ;
struct TYPE_3__ {int* stride; scalar_t__* planes; } ;


 int stub1 (int *,void**,unsigned int,unsigned int) ;

__attribute__((used)) static int packed_repack(void *user, unsigned i, unsigned x0, unsigned x1)
{
    struct mp_zimg_repack *r = user;

    uint32_t *p1 =
        (void *)(r->mpi->planes[0] + r->mpi->stride[0] * (ptrdiff_t)i);

    void *p2[3];
    for (int p = 0; p < 3; p++) {
        int s = r->components[p];
        p2[p] = r->tmp->planes[s] +
                r->tmp->stride[s] * (ptrdiff_t)(i & r->zmask[s]);
    }

    r->packed_repack_scanline(p1, p2, x0, x1);

    return 0;
}
