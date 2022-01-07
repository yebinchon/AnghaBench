
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va_surface {int dummy; } ;
struct mp_image {scalar_t__ imgfmt; scalar_t__* planes; } ;


 scalar_t__ IMGFMT_VAAPI ;

__attribute__((used)) static struct va_surface *va_surface_in_mp_image(struct mp_image *mpi)
{
    return mpi && mpi->imgfmt == IMGFMT_VAAPI ?
        (struct va_surface*)mpi->planes[0] : ((void*)0);
}
