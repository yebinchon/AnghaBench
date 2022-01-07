
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mp_vdpau_mixer_frame ;
struct mp_image {scalar_t__ imgfmt; scalar_t__* planes; } ;


 scalar_t__ IMGFMT_VDPAU ;

struct mp_vdpau_mixer_frame *mp_vdpau_mixed_frame_get(struct mp_image *mpi)
{
    if (mpi->imgfmt != IMGFMT_VDPAU)
        return ((void*)0);
    return (void *)mpi->planes[2];
}
