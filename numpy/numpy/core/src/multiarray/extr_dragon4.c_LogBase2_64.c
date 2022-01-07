
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint64 ;
typedef scalar_t__ npy_uint32 ;


 scalar_t__ LogBase2_32 (scalar_t__) ;

__attribute__((used)) static npy_uint32
LogBase2_64(npy_uint64 val)
{
    npy_uint64 temp;

    temp = val >> 32;
    if (temp) {
        return 32 + LogBase2_32((npy_uint32)temp);
    }

    return LogBase2_32((npy_uint32)val);
}
