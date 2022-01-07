
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef size_t* PULONG ;
typedef char* PCHAR ;
typedef scalar_t__ CHAR ;


 int DPRINT (char*,scalar_t__*) ;
 scalar_t__ isspace (char) ;
 int strncpy (scalar_t__*,char*,size_t) ;

__attribute__((used)) static
PCHAR
IniCacheGetSectionName(
    PCHAR Ptr,
    PCHAR *NamePtr,
    PULONG NameSize)
{
    ULONG Size = 0;
    CHAR Name[256];

    *NamePtr = ((void*)0);
    *NameSize = 0;


    while (*Ptr != 0 && isspace(*Ptr))
    {
        Ptr++;
    }

    *NamePtr = Ptr;

    while (*Ptr != 0 && *Ptr != ']')
    {
        Size++;
        Ptr++;
    }
    Ptr++;

    while (*Ptr != 0 && *Ptr != L'\n')
    {
        Ptr++;
    }
    Ptr++;

    *NameSize = Size;

    strncpy(Name, *NamePtr, Size);
    Name[Size] = 0;

    DPRINT("SectionName: '%s'\n", Name);

    return Ptr;
}
