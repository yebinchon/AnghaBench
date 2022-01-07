
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int value; } ;
typedef TYPE_1__* HPDF_String ;
typedef int HPDF_INT32 ;


 int memcmp (int ,int ,scalar_t__) ;

HPDF_INT32
HPDF_String_Cmp (HPDF_String s1,
                  HPDF_String s2)
{
    if (s1->len < s2->len) return -1;
    if (s1->len > s2->len) return +1;
    return memcmp(s1->value, s2->value, s1->len);
}
