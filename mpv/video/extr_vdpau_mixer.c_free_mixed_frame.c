
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vdpau_mixer_frame {int dummy; } ;


 int talloc_free (struct mp_vdpau_mixer_frame*) ;

__attribute__((used)) static void free_mixed_frame(void *arg)
{
    struct mp_vdpau_mixer_frame *frame = arg;
    talloc_free(frame);
}
