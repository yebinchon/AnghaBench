
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSTR ;
typedef int * PCSTR ;


 int * FrLdrHeapAlloc (scalar_t__,int ) ;
 int TAG_STRING ;
 int strcpy (int *,int *) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static PCSTR CopyString(PCSTR Source)
{
    PSTR Dest;

    if (!Source)
        return ((void*)0);

    Dest = FrLdrHeapAlloc(strlen(Source) + 1, TAG_STRING);
    if (Dest)
        strcpy(Dest, Source);

    return Dest;
}
