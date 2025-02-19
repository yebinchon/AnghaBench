
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int LONG ;
typedef int BYTE ;



__attribute__((used)) static LONG fetch_long(const BYTE** ptr)
{
    LONG ret;

    if (*(*ptr) & 1)
    {
        ret = (*(const ULONG*)(*ptr) - 0x80000000) / 2;
        (*ptr) += 4;
    }
    else
    {
        ret = (*(const USHORT*)(*ptr) - 0x8000) / 2;
        (*ptr) += 2;
    }

    return ret;
}
