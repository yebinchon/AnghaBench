
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_22__ {int ListEntry; int SectionItemList; int SectionItemCount; void* ItemValue; struct TYPE_22__* ItemName; void* SectionName; } ;
typedef TYPE_1__* PINI_SECTION_ITEM ;
typedef TYPE_1__* PINI_SECTION ;
typedef TYPE_1__* PCHAR ;
typedef int INI_SECTION_ITEM ;
typedef int INI_SECTION ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 void* FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (TYPE_1__*,int ) ;
 int IniExtractSectionName (void*,TYPE_1__*,scalar_t__) ;
 int IniExtractSettingName (TYPE_1__*,TYPE_1__*,scalar_t__) ;
 int IniExtractSettingValue (void*,TYPE_1__*,scalar_t__) ;
 int IniFileSectionCount ;
 scalar_t__ IniFileSectionInitialized ;
 int IniFileSectionListHead ;
 int IniFileSettingCount ;
 scalar_t__ IniGetNextLine (TYPE_1__*,scalar_t__,TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ IniGetNextLineSize (TYPE_1__*,scalar_t__,scalar_t__) ;
 int IniGetSectionNameSize (TYPE_1__*,scalar_t__) ;
 int IniGetSettingNameSize (TYPE_1__*,scalar_t__) ;
 int IniGetSettingValueSize (TYPE_1__*,scalar_t__) ;
 scalar_t__ IniIsCommentLine (TYPE_1__*,scalar_t__) ;
 scalar_t__ IniIsLineEmpty (TYPE_1__*,scalar_t__) ;
 scalar_t__ IniIsSectionName (TYPE_1__*,scalar_t__) ;
 scalar_t__ IniIsSetting (TYPE_1__*,scalar_t__) ;
 int InitializeListHead (int *) ;
 int InsertTailList (int *,int *) ;
 int MachConsGetCh () ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int TAG_INI_FILE ;
 int TAG_INI_NAME ;
 int TAG_INI_SECTION ;
 int TAG_INI_SECTION_ITEM ;
 int TAG_INI_VALUE ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int printf (char*,...) ;
 scalar_t__ strlen (TYPE_1__*) ;

BOOLEAN IniParseFile(PCHAR IniFileData, ULONG IniFileSize)
{
    ULONG CurrentOffset;
    ULONG CurrentLineNumber;
    PCHAR IniFileLine;
    ULONG IniFileLineSize;
    ULONG LineLength;
    PINI_SECTION CurrentSection = ((void*)0);
    PINI_SECTION_ITEM CurrentItem = ((void*)0);

    TRACE("IniParseFile() IniFileSize: %d\n", IniFileSize);

    if (!IniFileSectionInitialized)
    {
        InitializeListHead(&IniFileSectionListHead);
        IniFileSectionInitialized = TRUE;
    }


    IniFileLineSize = 80;
    IniFileLine = FrLdrTempAlloc(IniFileLineSize, TAG_INI_FILE);
    if (!IniFileLine)
    {
        return FALSE;
    }


    CurrentLineNumber = 0;
    CurrentOffset = 0;
    while (CurrentOffset < IniFileSize)
    {

        if (IniFileLineSize < IniGetNextLineSize(IniFileData, IniFileSize, CurrentOffset))
        {
            IniFileLineSize = IniGetNextLineSize(IniFileData, IniFileSize, CurrentOffset);
            FrLdrTempFree(IniFileLine, TAG_INI_FILE);
            IniFileLine = FrLdrTempAlloc(IniFileLineSize, TAG_INI_FILE);
            if (!IniFileLine)
            {
                return FALSE;
            }
        }


        CurrentOffset = IniGetNextLine(IniFileData, IniFileSize, IniFileLine, IniFileLineSize, CurrentOffset);
        LineLength = (ULONG)strlen(IniFileLine);


        if (IniIsLineEmpty(IniFileLine, LineLength) || IniIsCommentLine(IniFileLine, LineLength))
        {
            CurrentLineNumber++;
            continue;
        }


        if (IniIsSectionName(IniFileLine, LineLength))
        {

            CurrentSection = FrLdrTempAlloc(sizeof(INI_SECTION), TAG_INI_SECTION);
            if (!CurrentSection)
            {
                FrLdrTempFree(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }

            RtlZeroMemory(CurrentSection, sizeof(INI_SECTION));


            CurrentSection->SectionName = FrLdrTempAlloc(IniGetSectionNameSize(IniFileLine, LineLength), TAG_INI_NAME);
            if (!CurrentSection->SectionName)
            {
                FrLdrTempFree(CurrentSection, TAG_INI_FILE);
                FrLdrTempFree(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }


            IniExtractSectionName(CurrentSection->SectionName, IniFileLine, LineLength);
            InitializeListHead(&CurrentSection->SectionItemList);


            IniFileSectionCount++;
            InsertTailList(&IniFileSectionListHead, &CurrentSection->ListEntry);

            CurrentLineNumber++;
            continue;
        }


        if (IniIsSetting(IniFileLine, LineLength))
        {

            if (CurrentSection == ((void*)0))
            {
                printf("Error: freeldr.ini:%lu: Setting '%s' found outside of a [section].\n", CurrentLineNumber, IniFileLine);
                printf("Press any key to continue...\n");
                MachConsGetCh();
                CurrentLineNumber++;
                continue;
            }


            CurrentItem = FrLdrTempAlloc(sizeof(INI_SECTION_ITEM), TAG_INI_SECTION_ITEM);
            if (!CurrentItem)
            {
                FrLdrTempFree(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }

            RtlZeroMemory(CurrentItem, sizeof(INI_SECTION_ITEM));


            CurrentItem->ItemName = FrLdrTempAlloc(IniGetSettingNameSize(IniFileLine, LineLength), TAG_INI_NAME);
            if (!CurrentItem->ItemName)
            {
                FrLdrTempFree(CurrentItem, TAG_INI_SECTION_ITEM);
                FrLdrTempFree(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }


            CurrentItem->ItemValue = FrLdrTempAlloc(IniGetSettingValueSize(IniFileLine, LineLength), TAG_INI_VALUE);
            if (!CurrentItem->ItemValue)
            {
                FrLdrTempFree(CurrentItem->ItemName, TAG_INI_NAME);
                FrLdrTempFree(CurrentItem, TAG_INI_SECTION_ITEM);
                FrLdrTempFree(IniFileLine, TAG_INI_FILE);
                return FALSE;
            }


            IniExtractSettingName(CurrentItem->ItemName, IniFileLine, LineLength);
            IniExtractSettingValue(CurrentItem->ItemValue, IniFileLine, LineLength);


            IniFileSettingCount++;
            CurrentSection->SectionItemCount++;
            InsertTailList(&CurrentSection->SectionItemList, &CurrentItem->ListEntry);

            CurrentLineNumber++;
            continue;
        }

        CurrentLineNumber++;
    }

    FrLdrTempFree(IniFileLine, TAG_INI_FILE);

    TRACE("Parsed %d sections and %d settings.\n", IniFileSectionCount, IniFileSettingCount);
    TRACE("IniParseFile() done.\n");

    return TRUE;
}
