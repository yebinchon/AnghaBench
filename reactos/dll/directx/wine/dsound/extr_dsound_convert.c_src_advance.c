
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UINT ;
typedef int INT ;


 int DSOUND_FREQSHIFT ;

__attribute__((used)) static inline void src_advance(const void **src, UINT stride, INT *count, UINT *freqAcc, UINT adj)
{
    *freqAcc += adj;
    if (*freqAcc >= (1 << DSOUND_FREQSHIFT))
    {
        ULONG adv = (*freqAcc >> DSOUND_FREQSHIFT);
        *freqAcc &= (1 << DSOUND_FREQSHIFT) - 1;
        *(const char **)src += adv * stride;
        *count -= adv;
    }
}
