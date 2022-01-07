
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef scalar_t__ BYTE ;


 scalar_t__ LZ4_read32 (scalar_t__ const*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static unsigned
LZ4HC_reverseCountPattern(const BYTE* ip, const BYTE* const iLow, U32 pattern)
{
    const BYTE* const iStart = ip;

    while (likely(ip >= iLow+4)) {
        if (LZ4_read32(ip-4) != pattern) break;
        ip -= 4;
    }
    { const BYTE* bytePtr = (const BYTE*)(&pattern) + 3;
        while (likely(ip>iLow)) {
            if (ip[-1] != *bytePtr) break;
            ip--; bytePtr--;
    } }
    return (unsigned)(iStart - ip);
}
