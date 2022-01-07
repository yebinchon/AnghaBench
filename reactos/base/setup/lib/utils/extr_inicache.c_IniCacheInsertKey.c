
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* Next; struct TYPE_9__* Prev; struct TYPE_9__* Data; struct TYPE_9__* Name; } ;
typedef TYPE_1__ WCHAR ;
struct TYPE_10__ {TYPE_1__* LastKey; TYPE_1__* FirstKey; } ;
typedef scalar_t__* PWCHAR ;
typedef TYPE_2__* PINICACHESECTION ;
typedef TYPE_1__* PINICACHEKEY ;
typedef scalar_t__ INSERTION_TYPE ;
typedef int INICACHEKEY ;


 int DPRINT (char*) ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ INSERT_AFTER ;
 scalar_t__ INSERT_BEFORE ;
 scalar_t__ INSERT_FIRST ;
 scalar_t__ INSERT_LAST ;
 int ProcessHeap ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int wcscpy (TYPE_1__*,scalar_t__*) ;
 int wcslen (scalar_t__*) ;

PINICACHEKEY
IniCacheInsertKey(
    PINICACHESECTION Section,
    PINICACHEKEY AnchorKey,
    INSERTION_TYPE InsertionType,
    PWCHAR Name,
    PWCHAR Data)
{
    PINICACHEKEY Key;

    Key = ((void*)0);

    if (Section == ((void*)0) ||
        Name == ((void*)0) ||
        *Name == 0 ||
        Data == ((void*)0) ||
        *Data == 0)
    {
        DPRINT("Invalid parameter\n");
        return ((void*)0);
    }


    Key = (PINICACHEKEY)RtlAllocateHeap(ProcessHeap,
                                        HEAP_ZERO_MEMORY,
                                        sizeof(INICACHEKEY));
    if (Key == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        return ((void*)0);
    }


    Key->Name = (WCHAR*)RtlAllocateHeap(ProcessHeap,
                                        0,
                                        (wcslen(Name) + 1) * sizeof(WCHAR));
    if (Key->Name == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        RtlFreeHeap(ProcessHeap, 0, Key);
        return ((void*)0);
    }


    wcscpy(Key->Name, Name);


    Key->Data = (WCHAR*)RtlAllocateHeap(ProcessHeap,
                                        0,
                                        (wcslen(Data) + 1) * sizeof(WCHAR));
    if (Key->Data == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        RtlFreeHeap(ProcessHeap, 0, Key->Name);
        RtlFreeHeap(ProcessHeap, 0, Key);
        return ((void*)0);
    }


    wcscpy(Key->Data, Data);


    if (Section->FirstKey == ((void*)0))
    {
        Section->FirstKey = Key;
        Section->LastKey = Key;
    }
    else if ((InsertionType == INSERT_FIRST) ||
             ((InsertionType == INSERT_BEFORE) && ((AnchorKey == ((void*)0)) || (AnchorKey == Section->FirstKey))))
    {

        Section->FirstKey->Prev = Key;
        Key->Next = Section->FirstKey;
        Section->FirstKey = Key;
    }
    else if ((InsertionType == INSERT_BEFORE) && (AnchorKey != ((void*)0)))
    {

        Key->Next = AnchorKey;
        Key->Prev = AnchorKey->Prev;
        AnchorKey->Prev->Next = Key;
        AnchorKey->Prev = Key;
    }
    else if ((InsertionType == INSERT_LAST) ||
             ((InsertionType == INSERT_AFTER) && ((AnchorKey == ((void*)0)) || (AnchorKey == Section->LastKey))))
    {
        Section->LastKey->Next = Key;
        Key->Prev = Section->LastKey;
        Section->LastKey = Key;
    }
    else if ((InsertionType == INSERT_AFTER) && (AnchorKey != ((void*)0)))
    {

        Key->Next = AnchorKey->Next;
        Key->Prev = AnchorKey;
        AnchorKey->Next->Prev = Key;
        AnchorKey->Next = Key;
    }

    return Key;
}
