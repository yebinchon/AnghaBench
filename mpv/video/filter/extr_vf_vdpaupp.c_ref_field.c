
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int queue; } ;
struct mp_vdpau_mixer_frame {int dummy; } ;
struct mp_image {int * planes; } ;
typedef uintptr_t VdpVideoSurface ;


 uintptr_t VDP_INVALID_HANDLE ;
 struct mp_image* mp_image_new_ref (int ) ;
 int mp_refqueue_get_field (int ,int) ;
 int talloc_steal (struct mp_vdpau_mixer_frame*,struct mp_image*) ;

__attribute__((used)) static VdpVideoSurface ref_field(struct priv *p,
                                 struct mp_vdpau_mixer_frame *frame, int pos)
{
    struct mp_image *mpi = mp_image_new_ref(mp_refqueue_get_field(p->queue, pos));
    if (!mpi)
        return VDP_INVALID_HANDLE;
    talloc_steal(frame, mpi);
    return (uintptr_t)mpi->planes[3];
}
