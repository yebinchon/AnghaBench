
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {struct TYPE_6__* SectionName; struct TYPE_6__* ItemValue; struct TYPE_6__* ItemName; int SectionItemList; } ;
typedef int PLIST_ENTRY ;
typedef TYPE_1__* PINI_SECTION_ITEM ;
typedef TYPE_1__* PINI_SECTION ;


 TYPE_1__* CONTAINING_RECORD (int ,int ,int ) ;
 int FrLdrTempFree (TYPE_1__*,int ) ;
 int INI_SECTION_ITEM ;
 int IsListEmpty (int *) ;
 int RemoveHeadList (int *) ;
 int TAG_INI_NAME ;
 int TAG_INI_SECTION ;
 int TAG_INI_SECTION_ITEM ;
 int TAG_INI_VALUE ;

VOID IniFreeSection(PINI_SECTION Section)
{
    PLIST_ENTRY ListEntry;
    PINI_SECTION_ITEM SectionItem;


    while (!IsListEmpty(&Section->SectionItemList))
    {

        ListEntry = RemoveHeadList(&Section->SectionItemList);
        SectionItem = CONTAINING_RECORD(ListEntry, INI_SECTION_ITEM, ListEntry);


        FrLdrTempFree(SectionItem->ItemName, TAG_INI_NAME);
        FrLdrTempFree(SectionItem->ItemValue, TAG_INI_VALUE);
        FrLdrTempFree(SectionItem, TAG_INI_SECTION_ITEM);
    }

    FrLdrTempFree(Section->SectionName, TAG_INI_NAME);
    FrLdrTempFree(Section, TAG_INI_SECTION);
}
