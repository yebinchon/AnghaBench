
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCSTR ;


 int ShimLib_StringNDuplicateA (int ,scalar_t__) ;
 scalar_t__ lstrlenA (int ) ;

PCSTR ShimLib_StringDuplicateA(PCSTR szString)
{
    return ShimLib_StringNDuplicateA(szString, lstrlenA(szString) + 1);
}
