
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long UINT32 ;



__attribute__((used)) static unsigned long dwarf2_get_u4(const unsigned char* ptr)
{
    return *(const UINT32*)ptr;
}
