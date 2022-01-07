
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PBYTE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;



__attribute__((used)) static
BOOL
GetBitValue(
    PBYTE pBitmap,
    DWORD dwBitNumber)
{
    DWORD dwIndex = dwBitNumber / 8;
    BYTE Mask = 1 << (dwBitNumber & 7);

    return ((pBitmap[dwIndex] & Mask) != 0);
}
