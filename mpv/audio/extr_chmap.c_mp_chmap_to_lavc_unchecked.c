
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct mp_chmap {int num; int* speaker; } ;


 scalar_t__ mp_chmap_is_unknown (struct mp_chmap*) ;

uint64_t mp_chmap_to_lavc_unchecked(const struct mp_chmap *src)
{
    struct mp_chmap t = *src;
    if (t.num > 64)
        return 0;



    if (mp_chmap_is_unknown(&t))
        return t.num == 64 ? (uint64_t)-1 : (1ULL << t.num) - 1;
    uint64_t mask = 0;
    for (int n = 0; n < t.num; n++) {
        if (t.speaker[n] < 64)
            mask |= 1ULL << t.speaker[n];
    }
    return mask;
}
