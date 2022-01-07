
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_4__ {int* bits; } ;
struct TYPE_5__ {int length; TYPE_1__ u; } ;
typedef TYPE_2__ RECharSet ;


 int assert (int) ;

__attribute__((used)) static void
AddCharacterToCharSet(RECharSet *cs, WCHAR c)
{
    UINT byteIndex = (UINT)(c >> 3);
    assert(c <= cs->length);
    cs->u.bits[byteIndex] |= 1 << (c & 0x7);
}
