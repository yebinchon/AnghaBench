
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int BYTE ;



__attribute__((used)) static ULONG fetch_ulong(const BYTE** ptr)
{
    ULONG ret;

    if (*(*ptr) & 1)
    {
        ret = *(const ULONG*)(*ptr) / 2;
        (*ptr) += 4;
    }
    else
    {
        ret = *(const USHORT*)(*ptr) / 2;
        (*ptr) += 2;
    }
    return ret;
}
