
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int hi; int lo; int member_1; int member_0; } ;
typedef TYPE_1__ u128 ;


 int BSWAP8 (long const) ;
 int GETU32 (int const*) ;
 int PUTU32 (int *,scalar_t__) ;
 int REDUCE1BIT (TYPE_1__) ;

__attribute__((used)) static void gcm_gmult_1bit(u64 Xi[2], const u64 H[2])
{
    u128 V, Z = { 0, 0 };
    long X;
    int i, j;
    const long *xi = (const long *)Xi;
    const union {
        long one;
        char little;
    } is_endian = { 1 };

    V.hi = H[0];
    V.lo = H[1];

    for (j = 0; j < 16 / sizeof(long); ++j) {
        if (is_endian.little) {
            if (sizeof(long) == 8) {



                const u8 *p = (const u8 *)(xi + j);
                X = (long)((u64)GETU32(p) << 32 | GETU32(p + 4));

            } else {
                const u8 *p = (const u8 *)(xi + j);
                X = (long)GETU32(p);
            }
        } else
            X = xi[j];

        for (i = 0; i < 8 * sizeof(long); ++i, X <<= 1) {
            u64 M = (u64)(X >> (8 * sizeof(long) - 1));
            Z.hi ^= V.hi & M;
            Z.lo ^= V.lo & M;

            REDUCE1BIT(V);
        }
    }

    if (is_endian.little) {




        u8 *p = (u8 *)Xi;
        u32 v;
        v = (u32)(Z.hi >> 32);
        PUTU32(p, v);
        v = (u32)(Z.hi);
        PUTU32(p + 4, v);
        v = (u32)(Z.lo >> 32);
        PUTU32(p + 8, v);
        v = (u32)(Z.lo);
        PUTU32(p + 12, v);

    } else {
        Xi[0] = Z.hi;
        Xi[1] = Z.lo;
    }
}
