#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* Next; struct TYPE_9__* Prev; struct TYPE_9__* Data; struct TYPE_9__* Name; } ;
typedef  TYPE_1__ WCHAR ;
struct TYPE_10__ {TYPE_1__* LastKey; TYPE_1__* FirstKey; } ;
typedef  scalar_t__* PWCHAR ;
typedef  TYPE_2__* PINICACHESECTION ;
typedef  TYPE_1__* PINICACHEKEY ;
typedef  scalar_t__ INSERTION_TYPE ;
typedef  int /*<<< orphan*/  INICACHEKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ INSERT_AFTER ; 
 scalar_t__ INSERT_BEFORE ; 
 scalar_t__ INSERT_FIRST ; 
 scalar_t__ INSERT_LAST ; 
 int /*<<< orphan*/  ProcessHeap ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*) ; 
 int FUNC4 (scalar_t__*) ; 

PINICACHEKEY
FUNC5(
    PINICACHESECTION Section,
    PINICACHEKEY AnchorKey,
    INSERTION_TYPE InsertionType,
    PWCHAR Name,
    PWCHAR Data)
{
    PINICACHEKEY Key;

    Key = NULL;

    if (Section == NULL ||
        Name == NULL ||
        *Name == 0 ||
        Data == NULL ||
        *Data == 0)
    {
        FUNC0("Invalid parameter\n");
        return NULL;
    }

    /* Allocate key buffer */
    Key = (PINICACHEKEY)FUNC1(ProcessHeap,
                                        HEAP_ZERO_MEMORY,
                                        sizeof(INICACHEKEY));
    if (Key == NULL)
    {
        FUNC0("RtlAllocateHeap() failed\n");
        return NULL;
    }

    /* Allocate name buffer */
    Key->Name = (WCHAR*)FUNC1(ProcessHeap,
                                        0,
                                        (FUNC4(Name) + 1) * sizeof(WCHAR));
    if (Key->Name == NULL)
    {
        FUNC0("RtlAllocateHeap() failed\n");
        FUNC2(ProcessHeap, 0, Key);
        return NULL;
    }

    /* Copy value name */
    FUNC3(Key->Name, Name);

    /* Allocate data buffer */
    Key->Data = (WCHAR*)FUNC1(ProcessHeap,
                                        0,
                                        (FUNC4(Data) + 1) * sizeof(WCHAR));
    if (Key->Data == NULL)
    {
        FUNC0("RtlAllocateHeap() failed\n");
        FUNC2(ProcessHeap, 0, Key->Name);
        FUNC2(ProcessHeap, 0, Key);
        return NULL;
    }

    /* Copy value data */
    FUNC3(Key->Data, Data);

    /* Insert key into section */
    if (Section->FirstKey == NULL)
    {
        Section->FirstKey = Key;
        Section->LastKey = Key;
    }
    else if ((InsertionType == INSERT_FIRST) ||
             ((InsertionType == INSERT_BEFORE) && ((AnchorKey == NULL) || (AnchorKey == Section->FirstKey))))
    {
        /* Insert at the head of the list */
        Section->FirstKey->Prev = Key;
        Key->Next = Section->FirstKey;
        Section->FirstKey = Key;
    }
    else if ((InsertionType == INSERT_BEFORE) && (AnchorKey != NULL))
    {
        /* Insert before the anchor key */
        Key->Next = AnchorKey;
        Key->Prev = AnchorKey->Prev;
        AnchorKey->Prev->Next = Key;
        AnchorKey->Prev = Key;
    }
    else if ((InsertionType == INSERT_LAST) ||
             ((InsertionType == INSERT_AFTER) && ((AnchorKey == NULL) || (AnchorKey == Section->LastKey))))
    {
        Section->LastKey->Next = Key;
        Key->Prev = Section->LastKey;
        Section->LastKey = Key;
    }
    else if ((InsertionType == INSERT_AFTER) && (AnchorKey != NULL))
    {
        /* Insert after the anchor key */
        Key->Next = AnchorKey->Next;
        Key->Prev = AnchorKey;
        AnchorKey->Next->Prev = Key;
        AnchorKey->Next = Key;
    }

    return Key;
}