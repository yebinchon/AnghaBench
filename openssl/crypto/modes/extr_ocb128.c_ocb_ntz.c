
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static u32 ocb_ntz(u64 n)
{
    u32 cnt = 0;
    while (!(n & 1)) {
        n >>= 1;
        cnt++;
    }
    return cnt;
}
