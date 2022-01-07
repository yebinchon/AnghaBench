
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vdpau_mixer_opts {scalar_t__ deint; scalar_t__ chroma_deint; scalar_t__ pullup; scalar_t__ hqscaling; scalar_t__ sharpen; scalar_t__ denoise; } ;



__attribute__((used)) static bool opts_equal(const struct mp_vdpau_mixer_opts *a,
                       const struct mp_vdpau_mixer_opts *b)
{
    return a->deint == b->deint && a->chroma_deint == b->chroma_deint &&
           a->pullup == b->pullup && a->hqscaling == b->hqscaling &&
           a->sharpen == b->sharpen && a->denoise == b->denoise;
}
