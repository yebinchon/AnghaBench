
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int const DWORD64 ;



__attribute__((used)) static DWORD64 dwarf2_get_u8(const unsigned char* ptr)
{
    return *(const UINT64*)ptr;
}
