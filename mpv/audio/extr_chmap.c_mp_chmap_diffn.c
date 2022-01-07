
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mp_chmap {int dummy; } ;


 int av_popcount64 (int) ;
 int mp_chmap_to_lavc_unchecked (struct mp_chmap const*) ;

int mp_chmap_diffn(const struct mp_chmap *a, const struct mp_chmap *b)
{
    uint64_t a_mask = mp_chmap_to_lavc_unchecked(a);
    uint64_t b_mask = mp_chmap_to_lavc_unchecked(b);
    return av_popcount64((a_mask ^ b_mask) & a_mask);
}
