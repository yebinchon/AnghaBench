#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/ * PINICACHESECTION ;
typedef  int /*<<< orphan*/ * PINICACHEKEY ;
typedef  int /*<<< orphan*/ * PINICACHE ;
typedef  char* PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  INICACHE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char**,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char**,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC9(
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

    /* Allocate inicache header */
    *Cache = (PINICACHE)FUNC8(ProcessHeap,
                                        HEAP_ZERO_MEMORY,
                                        sizeof(INICACHE));
    if (*Cache == NULL)
    {
        FUNC0("RtlAllocateHeap() failed\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    /* Parse ini file */
    Section = NULL;
    Ptr = FileBuffer;
    while (Ptr != NULL && *Ptr != 0)
    {
        Ptr = FUNC7(Ptr);
        if (Ptr == NULL)
            continue;

        if (*Ptr == '[')
        {
            Section = NULL;
            Ptr++;

            Ptr = FUNC5(Ptr,
                                         &SectionName,
                                         &SectionNameSize);

            FUNC0("[%.*s]\n", SectionNameSize, SectionName);

            Section = FUNC2(*Cache,
                                         SectionName,
                                         SectionNameSize);
            if (Section == NULL)
            {
                FUNC0("IniCacheAddSection() failed\n");
                Ptr = FUNC6(Ptr);
                continue;
            }
        }
        else
        {
            if (Section == NULL)
            {
                Ptr = FUNC6(Ptr);
                continue;
            }

            Ptr = FUNC3(Ptr,
                                     &KeyName,
                                     &KeyNameSize);

            Ptr = FUNC4(Ptr,
                                      &KeyValue,
                                      &KeyValueSize,
                                      String);

            FUNC0("'%.*s' = '%.*s'\n", KeyNameSize, KeyName, KeyValueSize, KeyValue);

            Key = FUNC1(Section,
                                 KeyName,
                                 KeyNameSize,
                                 KeyValue,
                                 KeyValueSize);
            if (Key == NULL)
            {
                FUNC0("IniCacheAddKey() failed\n");
            }
        }
    }

    return STATUS_SUCCESS;
}