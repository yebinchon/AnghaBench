
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int* PBYTE ;
typedef int DWORD ;
typedef int BYTE ;



__attribute__((used)) static
VOID
SetBitValue(
    PBYTE pBitmap,
    DWORD dwBitNumber)
{
    DWORD dwIndex = dwBitNumber / 8;
    BYTE Mask = 1 << (dwBitNumber & 7);

    pBitmap[dwIndex] |= Mask;
}
