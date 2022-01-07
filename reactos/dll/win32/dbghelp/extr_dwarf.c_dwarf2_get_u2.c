
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short UINT16 ;



__attribute__((used)) static unsigned short dwarf2_get_u2(const unsigned char* ptr)
{
    return *(const UINT16*)ptr;
}
