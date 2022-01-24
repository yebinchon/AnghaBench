#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_22__ {int /*<<< orphan*/  ListEntry; int /*<<< orphan*/  SectionItemList; int /*<<< orphan*/  SectionItemCount; void* ItemValue; struct TYPE_22__* ItemName; void* SectionName; } ;
typedef  TYPE_1__* PINI_SECTION_ITEM ;
typedef  TYPE_1__* PINI_SECTION ;
typedef  TYPE_1__* PCHAR ;
typedef  int /*<<< orphan*/  INI_SECTION_ITEM ;
typedef  int /*<<< orphan*/  INI_SECTION ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  IniFileSectionCount ; 
 scalar_t__ IniFileSectionInitialized ; 
 int /*<<< orphan*/  IniFileSectionListHead ; 
 int /*<<< orphan*/  IniFileSettingCount ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__,TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC7 (TYPE_1__*,scalar_t__) ; 
 int FUNC8 (TYPE_1__*,scalar_t__) ; 
 int FUNC9 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  TAG_INI_FILE ; 
 int /*<<< orphan*/  TAG_INI_NAME ; 
 int /*<<< orphan*/  TAG_INI_SECTION ; 
 int /*<<< orphan*/  TAG_INI_SECTION_ITEM ; 
 int /*<<< orphan*/  TAG_INI_VALUE ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 

BOOLEAN FUNC21(PCHAR IniFileData, ULONG IniFileSize)
{
    ULONG                    CurrentOffset;
    ULONG                    CurrentLineNumber;
    PCHAR                IniFileLine;
    ULONG                    IniFileLineSize;
    ULONG                    LineLength;
    PINI_SECTION        CurrentSection = NULL;
    PINI_SECTION_ITEM    CurrentItem = NULL;

    FUNC18("IniParseFile() IniFileSize: %d\n", IniFileSize);

    if (!IniFileSectionInitialized)
    {
        FUNC14(&IniFileSectionListHead);
        IniFileSectionInitialized = TRUE;
    }

    // Start with an 80-byte buffer
    IniFileLineSize = 80;
    IniFileLine = FUNC0(IniFileLineSize, TAG_INI_FILE);
    if (!IniFileLine)
    {
        return FALSE;
    }

    // Loop through each line and parse it
    CurrentLineNumber = 0;
    CurrentOffset = 0;
    while (CurrentOffset < IniFileSize)
    {
        // First check the line size and increase our buffer if necessary
        if (IniFileLineSize < FUNC6(IniFileData, IniFileSize, CurrentOffset))
        {
            IniFileLineSize = FUNC6(IniFileData, IniFileSize, CurrentOffset);
            FUNC1(IniFileLine, TAG_INI_FILE);
            IniFileLine = FUNC0(IniFileLineSize, TAG_INI_FILE);
            if (!IniFileLine)
            {
                return FALSE;
            }
        }

        // Get the line of data
        CurrentOffset = FUNC5(IniFileData, IniFileSize, IniFileLine, IniFileLineSize, CurrentOffset);
        LineLength = (ULONG)FUNC20(IniFileLine);

        // If it is a blank line or a comment then skip it
        if (FUNC11(IniFileLine, LineLength) || FUNC10(IniFileLine, LineLength))
        {
            CurrentLineNumber++;
            continue;
        }

        // Check if it is a new section
        if (FUNC12(IniFileLine, LineLength))
        {
            // Allocate a new section structure
            CurrentSection = FUNC0(sizeof(INI_SECTION), TAG_INI_SECTION);
            if (!CurrentSection)
            {
                FUNC1(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }

            FUNC17(CurrentSection, sizeof(INI_SECTION));

            // Allocate the section name buffer
            CurrentSection->SectionName = FUNC0(FUNC7(IniFileLine, LineLength), TAG_INI_NAME);
            if (!CurrentSection->SectionName)
            {
                FUNC1(CurrentSection, TAG_INI_FILE);
                FUNC1(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }

            // Get the section name
            FUNC2(CurrentSection->SectionName, IniFileLine, LineLength);
            FUNC14(&CurrentSection->SectionItemList);

            // Add it to the section list head
            IniFileSectionCount++;
            FUNC15(&IniFileSectionListHead, &CurrentSection->ListEntry);

            CurrentLineNumber++;
            continue;
        }

        // Check if it is a setting
        if (FUNC13(IniFileLine, LineLength))
        {
            // First check to make sure we're inside a [section]
            if (CurrentSection == NULL)
            {
                FUNC19("Error: freeldr.ini:%lu: Setting '%s' found outside of a [section].\n", CurrentLineNumber, IniFileLine);
                FUNC19("Press any key to continue...\n");
                FUNC16();
                CurrentLineNumber++;
                continue;
            }

            // Allocate a new item structure
            CurrentItem = FUNC0(sizeof(INI_SECTION_ITEM), TAG_INI_SECTION_ITEM);
            if (!CurrentItem)
            {
                FUNC1(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }

            FUNC17(CurrentItem, sizeof(INI_SECTION_ITEM));

            // Allocate the setting name buffer
            CurrentItem->ItemName = FUNC0(FUNC8(IniFileLine, LineLength), TAG_INI_NAME);
            if (!CurrentItem->ItemName)
            {
                FUNC1(CurrentItem, TAG_INI_SECTION_ITEM);
                FUNC1(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }

            // Allocate the setting value buffer
            CurrentItem->ItemValue = FUNC0(FUNC9(IniFileLine, LineLength), TAG_INI_VALUE);
            if (!CurrentItem->ItemValue)
            {
                FUNC1(CurrentItem->ItemName, TAG_INI_NAME);
                FUNC1(CurrentItem, TAG_INI_SECTION_ITEM);
                FUNC1(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }

            // Get the section name
            FUNC3(CurrentItem->ItemName, IniFileLine, LineLength);
            FUNC4(CurrentItem->ItemValue, IniFileLine, LineLength);

            // Add it to the current section
            IniFileSettingCount++;
            CurrentSection->SectionItemCount++;
            FUNC15(&CurrentSection->SectionItemList, &CurrentItem->ListEntry);

            CurrentLineNumber++;
            continue;
        }

        CurrentLineNumber++;
    }

    FUNC1(IniFileLine, TAG_INI_FILE);

    FUNC18("Parsed %d sections and %d settings.\n", IniFileSectionCount, IniFileSettingCount);
    FUNC18("IniParseFile() done.\n");

    return TRUE;
}