
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PCHAR ;


 scalar_t__ isspace (scalar_t__) ;

__attribute__((used)) static
PCHAR
IniCacheSkipWhitespace(
    PCHAR Ptr)
{
    while (*Ptr != 0 && isspace(*Ptr))
        Ptr++;

    return (*Ptr == 0) ? ((void*)0) : Ptr;
}
