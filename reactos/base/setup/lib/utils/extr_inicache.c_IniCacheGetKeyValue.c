
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__* PULONG ;
typedef char* PCHAR ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ isspace (char) ;

__attribute__((used)) static
PCHAR
IniCacheGetKeyValue(
    PCHAR Ptr,
    PCHAR *DataPtr,
    PULONG DataSize,
    BOOLEAN String)
{
    ULONG Size = 0;

    *DataPtr = ((void*)0);
    *DataSize = 0;


    while (*Ptr != 0 && isspace(*Ptr))
    {
        Ptr++;
    }


    if (*Ptr != '=')
    {
        return ((void*)0);
    }
    Ptr++;


    while (*Ptr != 0 && isspace(*Ptr))
    {
        Ptr++;
    }

    if (*Ptr == '"' && String)
    {
        Ptr++;


        *DataPtr = Ptr;
        while (*Ptr != '"')
        {
            Ptr++;
            Size++;
        }
        Ptr++;

        while (*Ptr && *Ptr != '\r' && *Ptr != '\n')
        {
            Ptr++;
        }
    }
    else
    {

        *DataPtr = Ptr;
        while (*Ptr != 0 && *Ptr != '\r' && *Ptr != ';')
        {
            Ptr++;
            Size++;
        }
    }


    if (*Ptr == '\r')
        Ptr++;
    if (*Ptr == '\n')
        Ptr++;

    *DataSize = Size;

    return Ptr;
}
