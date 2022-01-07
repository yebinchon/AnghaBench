
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int PSTR ;
typedef int PCSTR ;


 int ShimLib_ShimMalloc (int ) ;
 int StringCchCopyA (int ,int ,int ) ;

PCSTR ShimLib_StringNDuplicateA(PCSTR szString, SIZE_T stringLengthIncludingNullTerm)
{
    PSTR NewString = ShimLib_ShimMalloc(stringLengthIncludingNullTerm);
    StringCchCopyA(NewString, stringLengthIncludingNullTerm, szString);
    return NewString;
}
