
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PINICACHESECTION ;
typedef int * PINICACHEKEY ;
typedef int * PINICACHE ;
typedef char* PCHAR ;
typedef int NTSTATUS ;
typedef int INICACHE ;
typedef int BOOLEAN ;


 int DPRINT (char*,...) ;
 int HEAP_ZERO_MEMORY ;
 int * IniCacheAddKey (int *,char*,int ,char*,int ) ;
 int * IniCacheAddSection (int *,char*,int ) ;
 char* IniCacheGetKeyName (char*,char**,int *) ;
 char* IniCacheGetKeyValue (char*,char**,int *,int ) ;
 char* IniCacheGetSectionName (char*,char**,int *) ;
 char* IniCacheSkipToNextSection (char*) ;
 char* IniCacheSkipWhitespace (char*) ;
 int ProcessHeap ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

NTSTATUS
IniCacheLoadFromMemory(
    PINICACHE *Cache,
    PCHAR FileBuffer,
    ULONG FileLength,
    BOOLEAN String)
{
    PCHAR Ptr;

    PINICACHESECTION Section;
    PINICACHEKEY Key;

    PCHAR SectionName;
    ULONG SectionNameSize;

    PCHAR KeyName;
    ULONG KeyNameSize;

    PCHAR KeyValue;
    ULONG KeyValueSize;


    *Cache = (PINICACHE)RtlAllocateHeap(ProcessHeap,
                                        HEAP_ZERO_MEMORY,
                                        sizeof(INICACHE));
    if (*Cache == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    Section = ((void*)0);
    Ptr = FileBuffer;
    while (Ptr != ((void*)0) && *Ptr != 0)
    {
        Ptr = IniCacheSkipWhitespace(Ptr);
        if (Ptr == ((void*)0))
            continue;

        if (*Ptr == '[')
        {
            Section = ((void*)0);
            Ptr++;

            Ptr = IniCacheGetSectionName(Ptr,
                                         &SectionName,
                                         &SectionNameSize);

            DPRINT("[%.*s]\n", SectionNameSize, SectionName);

            Section = IniCacheAddSection(*Cache,
                                         SectionName,
                                         SectionNameSize);
            if (Section == ((void*)0))
            {
                DPRINT("IniCacheAddSection() failed\n");
                Ptr = IniCacheSkipToNextSection(Ptr);
                continue;
            }
        }
        else
        {
            if (Section == ((void*)0))
            {
                Ptr = IniCacheSkipToNextSection(Ptr);
                continue;
            }

            Ptr = IniCacheGetKeyName(Ptr,
                                     &KeyName,
                                     &KeyNameSize);

            Ptr = IniCacheGetKeyValue(Ptr,
                                      &KeyValue,
                                      &KeyValueSize,
                                      String);

            DPRINT("'%.*s' = '%.*s'\n", KeyNameSize, KeyName, KeyValueSize, KeyValue);

            Key = IniCacheAddKey(Section,
                                 KeyName,
                                 KeyNameSize,
                                 KeyValue,
                                 KeyValueSize);
            if (Key == ((void*)0))
            {
                DPRINT("IniCacheAddKey() failed\n");
            }
        }
    }

    return STATUS_SUCCESS;
}
