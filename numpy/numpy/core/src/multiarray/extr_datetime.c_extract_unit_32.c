
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_int32 ;


 int assert (int) ;

__attribute__((used)) static inline
npy_int32 extract_unit_32(npy_int32 *d, npy_int32 unit) {
    assert(unit > 0);
    npy_int32 div = *d / unit;
    npy_int32 mod = *d % unit;
    if (mod < 0) {
        mod += unit;
        div -= 1;
    }
    assert(mod >= 0);
    *d = mod;
    return div;
}
